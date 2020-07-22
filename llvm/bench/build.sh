#!/usr/bin/env bash

source parse.sh

# Take the path to a llvm IR file and the path to the output file and try to
# unroll the existing loops.
build::unroll() {
    local in=$1
    local out=$2

    opt -S -mem2reg -simplifycfg -loops -lcssa -loop-simplify -loop-rotate \
            -indvars -loop-unroll -unroll-count=5000 -unroll-threshold=5000 \
            "$in" -o "$out"
}
# Sometimes a single unroll pass does not suffice to completely unroll the
# existing loops, so we try to unroll until the new file is equal to the
# previous one.
build::full_unroll() {
    local llvmfile=$1

    # Unroll two times and check if both files are the same. If not, unroll
    # untill it stops changing.
    build::unroll "$llvmfile" "$llvmfile"
    build::unroll "$llvmfile" "unroll.ll"

    while [ $(cmp -s "$llvmfile" "unroll.ll"; echo $?) -eq 1 ]; do
        cp "unroll.ll" "$llvmfile"
        build::unroll "$llvmfile" "unroll.ll"
    done

    cp "unroll.ll" "$llvmfile"
    rm "unroll.ll"
}

# Takes the path to a benchmark and generates executables for: (i) the original
# code; (ii) the isochronous version; and (iii) the isochr. & optimized version.
# We assume that the benchmark folder contains a "sources" folder with a list
# of source files to be transformed.
build::single() {
    local bench=$1
    local sources=${bench}/src
    local libraries=${bench}/lib
    local llvmir=${bench}/llvm-ir
    local asm=${bench}/asm
    local bin=${bench}/bin

    # Create folders if they don't exist.
    mkdir -p $llvmir $asm $bin

    # Parse the meta.yaml containing the name of the functions to transform.
    local -A meta
    parse::yaml ${bench}/meta.yaml meta

    # Get the src & lib files.
    local -a srcs=($(ls $sources | grep "main"))
    local -a libs=($(ls $libraries))

    for src in ${srcs[@]}; do
        # Get rid of the language extension so we can use the src name.
        local srcname=$(echo $src | sed "s/\.[^.]*$//")
        printf "$srcname "

        # Compile the src file.
        clang -emit-llvm -S -Xclang -disable-O0-optnone \
            "${sources}/${src}" -o "${llvmir}/${srcname}.ll";

        local -a libllvm=()
        for lib in ${libs[@]}; do
            local libname=$(echo $lib | sed "s/\.[^.]*$//")

            # Compile the lib & link it with src
            clang -emit-llvm -S -Xclang -disable-O0-optnone \
                "${libraries}/${lib}" -o "${llvmir}/${libname}.ll";

            # Try to completely unroll existing loops.
            build::full_unroll "${llvmir}/${libname}.ll"

            libllvm+=("${llvmir}/${libname}.ll")
        done

        # Link the src file with all required libs.
        llvm-link -S ${llvmir}/${srcname}.ll ${libllvm[@]} \
            -o ${llvmir}/${srcname}.ll

        # Now the lib code is inside src.ll, so we can remove it to save
        # space.
        rm ${libllvm[@]}

        # Apply optimizations (level 1).
        opt -S -O1 "${llvmir}/${srcname}.ll" -o "${llvmir}/${srcname}.opt.ll"
        printf "."

        # Run the isochronous tool without optimizations & with optimizations.
        ../bin/lif -O0 -names=${meta[functions]} \
            "${llvmir}/${srcname}.ll" -o "${llvmir}/${srcname}_isochr.ll" \
            &> /dev/null
        printf "."

        ../bin/lif -O1 -names=${meta[functions]} \
            "${llvmir}/${srcname}.ll" -o "${llvmir}/${srcname}_isochr.opt.ll" \
            &> /dev/null
        printf "."

        # Generate the assembly files.
        llc -filetype=asm "${llvmir}/${srcname}.ll" \
            -o "${asm}/${srcname}.s"
        printf "."
        
        llc -filetype=asm "${llvmir}/${srcname}.opt.ll" \
            -o "${asm}/${srcname}.opt.s"
        printf "."

        llc -x86-cmov-converter=false -filetype=asm "${llvmir}/${srcname}_isochr.ll" \
            -o "${asm}/${srcname}_isochr.s"
        printf "."

        llc -x86-cmov-converter=false -filetype=asm "${llvmir}/${srcname}_isochr.opt.ll" \
            -o "${asm}/${srcname}_isochr.opt.s"
        printf "."

        # Generate the exec. for each assembly file.
        clang -g "${asm}/${srcname}.s" -o "${bin}/${srcname}" -no-pie
        printf "."
        clang -g "${asm}/${srcname}.opt.s" -o "${bin}/${srcname}.opt" -no-pie
        printf "."
        clang -g "${asm}/${srcname}_isochr.s" -o "${bin}/${srcname}_isochr" -no-pie
        printf "."
        clang -g "${asm}/${srcname}_isochr.opt.s" -o "${bin}/${srcname}_isochr.opt" -no-pie
        printf ". "

        # Compare the output to ensure they are all the same (i.e. the
        # transformed code is correct).
        local orig=$("${bin}/${srcname}.opt")
        local isochr=$("${bin}/${srcname}_isochr.opt")

        if [[ "$orig" == "$isochr" ]]; then
            echo -e "\033[0;32m[pass]\033[0m"
        else
            echo -e "\033[0;31m[fail]\033[0m"
        fi;
    done

    # File names with prefix "measure" refer to source files used to measure
    # execution time of the benchmark.
    srcs=($(ls $sources | grep "measure"))
    for src in ${srcs[@]}; do
        # Get rid of the language extension so we can use the src name.
        local srcname=$(echo $src | sed "s/\.[^.]*$//")

        # These measure files rely on a constant N to be the size of the input,
        # so we compile the benchmark for size in range [32, 1024], with step 32:
        for size in {32..1024..32}; do
            printf "$srcname [$size] "
            # Compile the src file.
            clang -emit-llvm -S -Xclang -disable-O0-optnone -DN=$size \
                "${sources}/${src}" -o "${llvmir}/${srcname}_${size}.ll";

            local -a libllvm=()
            for lib in ${libs[@]}; do
                local libname=$(echo $lib | sed "s/\.[^.]*$//")

                # Compile the lib & link it with src
                clang -emit-llvm -S -Xclang -disable-O0-optnone -DN=$size \
                    "${libraries}/${lib}" -o "${llvmir}/${libname}.ll";

                # Try to completely unroll existing loops.
                build::full_unroll "${llvmir}/${libname}.ll"

                libllvm+=("${llvmir}/${libname}.ll")
            done

            # Link the src file with all required libs.
            llvm-link -S ${llvmir}/${srcname}_${size}.ll ${libllvm[@]} \
                -o ${llvmir}/${srcname}_${size}.ll
            printf "."

            # Now the lib code is inside src.ll, so we can remove it to save
            # space.
            rm ${libllvm[@]}

            # Apply optimizations (level 1).
            opt -S -O1 "${llvmir}/${srcname}_${size}.ll" \
                -o "${llvmir}/${srcname}_${size}.opt.ll"
            printf "."

            # Run the isochronous tool without optimizations & with optimizations.
            ../bin/lif -O0 -names=${meta[functions]} \
                "${llvmir}/${srcname}_${size}.ll" \
                -o "${llvmir}/${srcname}_${size}_isochr.ll"
            printf "."

            ../bin/lif -O1 -names=${meta[functions]} \
                "${llvmir}/${srcname}_${size}.ll" \
                -o "${llvmir}/${srcname}_${size}_isochr.opt.ll" &> /dev/null
            printf "."

            # Generate the assembly files.
            llc -filetype=asm "${llvmir}/${srcname}_${size}.ll" \
                -o "${asm}/${srcname}_${size}.s"
            printf "."

            llc -filetype=asm "${llvmir}/${srcname}_${size}.opt.ll" \
                -o "${asm}/${srcname}_${size}.opt.s"
            printf "."

            llc -x86-cmov-converter=false -filetype=asm \
                "${llvmir}/${srcname}_${size}_isochr.ll" \
                -o "${asm}/${srcname}_${size}_isochr.s"
            printf "."

            llc -x86-cmov-converter=false -filetype=asm \
                "${llvmir}/${srcname}_${size}_isochr.opt.ll" \
                -o "${asm}/${srcname}_${size}_isochr.opt.s"
            printf "."

            # Generate the exec. for each assembly file.
            clang -g "${asm}/${srcname}_${size}.s" \
                -o "${bin}/${srcname}_${size}" -no-pie
            printf "."

            clang -g "${asm}/${srcname}_${size}.opt.s" \
                -o "${bin}/${srcname}_${size}.opt" -no-pie
            printf "."

            clang -g "${asm}/${srcname}_${size}_isochr.s" \
                -o "${bin}/${srcname}_${size}_isochr" -no-pie
            printf "."

            clang -g "${asm}/${srcname}_${size}_isochr.opt.s" \
                -o "${bin}/${srcname}_${size}_isochr.opt" -no-pie
            echo "."
        done
    done
}

# Takes the an array of benhcmarks (paths) to be transformed.
build::all() {
    local -n benchs_ref=$1
    for bench in ${benchs_ref[@]}; do
        echo "Building ${bench}"
        build::single "$bench"
    done
    echo "Done"
}
