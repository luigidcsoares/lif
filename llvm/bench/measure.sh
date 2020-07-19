#!/usr/bin/env bash

source parse.sh

# Takes the path to a benchmark and produces a CSV file with some statistics
# related to the execution time of a program.
measure::time() {
    local bench=$1;
    local sources=${bench}/src
    local bin=${bench}/bin
    local results=${bench}/results

    # File names with prefix "measure" refer to source files used to measure
    # execution time of the benchmark.
    srcs=($(ls $sources | grep "measure"))
    if [ ${#srcs[@]} -eq 0 ]; then return; fi

    # Generate a CSV file for the exec. time measurement.
    echo "Src,Type,N,Mean,Median,Std,#Outliers" > ${results}/time.csv

    for src in ${srcs[@]}; do
        # Get rid of the language extension so we can use the src name.
        local srcname=$(echo $src | sed "s/\.[^.]*$//")

        # First we test the original program:
        # These measure files rely on a constant N to be the size of the input,
        # so we compile the benchmark for size in range [32, 1024], with step 32:
        for size in {32..1024..32}; do
            # We run each test 1000 times again so we can get the mean of the
            # executions and reduce possible noises.
            local -a elapsed=()
            for _ in {1..1000}; do
                elapsed+=($(${bin}/${srcname}_${size}))
            done

            local args=${elapsed[@]}
            args=${args// /, }
            python -c \
                "from util import stats; print(stats.compute(3, $args))" \
                > tmp.yaml

            local -A stats=()
            parse::yaml tmp.yaml stats

            local row="${srcname},orig,${size},${stats[mean]}"
            row="${row},${stats[median]},${stats[std]},${stats[outliers]}"
            echo "$row" >> ${results}/time.csv
        done

        # Now, the original program optimized:
        for size in {32..1024..32}; do
            local -a elapsed=()
            for _ in {1..1000}; do
                elapsed+=($(${bin}/${srcname}_${size}.opt))
            done

            local args=${elapsed[@]}
            args=${args// /, }
            python -c \
                "from util import stats; print(stats.compute(3, $args))" \
                > tmp.yaml

            local -A stats=()
            parse::yaml tmp.yaml stats

            local row="${srcname},orig-opt,${size},${stats[mean]}"
            row="${row},${stats[median]},${stats[std]},${stats[outliers]}"
            echo "$row" >> ${results}/time.csv
        done

        # Then, the isochronous version:
        for size in {32..1024..32}; do
            local -a elapsed=()
            for _ in {1..1000}; do
                elapsed+=($(${bin}/${srcname}_${size}_isochr))
            done

            local args=${elapsed[@]}
            args=${args// /, }
            python -c \
                "from util import stats; print(stats.compute(3, $args))" \
                > tmp.yaml

            local -A stats=()
            parse::yaml tmp.yaml stats

            local row="${srcname},isochr,${size},${stats[mean]}"
            row="${row},${stats[median]},${stats[std]},${stats[outliers]}"
            echo "$row" >> ${results}/time.csv
        done

        # And finally, the isochronous version optimized:
        for size in {32..1024..32}; do
            local -a elapsed=()
            for _ in {1..1000}; do
                elapsed+=($(${bin}/${srcname}_${size}_isochr.opt))
            done

            local args=${elapsed[@]}
            args=${args// /, }
            python -c \
                "from util import stats; print(stats.compute(3, $args))" \
                > tmp.yaml

            local -A stats=()
            parse::yaml tmp.yaml stats

            local row="${srcname},isochr-opt,${size},${stats[mean]}"
            row="${row},${stats[median]},${stats[std]},${stats[outliers]}"
            echo "$row" >> ${results}/time.csv
        done
        rm tmp.yaml
    done
    echo "Generated exec. time CSV file: ${bench}/results/time.csv"
}

# Takes the path to a benchmark and produces a CSV file containing statistics
# about the number of llvm-ir instructions of some functions.
measure::size() {
    local bench=$1;
    local sources=${bench}/src
    local llvmir=${bench}/llvm-ir
    local results=${bench}/results

    # File names with prefix "measure" refer to source files used to measure
    # execution time of the benchmark.
    srcs=($(ls $sources | grep "measure"))
    if [ ${#srcs[@]} -eq 0 ]; then return; fi

    # Parse the bench/meta.yaml file to get the name of the functions.
    local -A meta
    parse::yaml ${bench}/meta.yaml meta
    local -a fns=(${meta[functions]//,/|})

    # Generate a CSV file for the exec. time measurement.
    echo "Src,Type,N,#LLVM-IR Instructions" > ${results}/size.csv

    for src in ${srcs[@]}; do
        # Get rid of the language extension so we can use the src name.
        local srcname=$(echo $src | sed "s/\.[^.]*$//")

        # First we test the original program:
        # These measure files rely on a constant N to be the size of the input,
        # so we compile the benchmark for size in range [32, 1024], with step 32:
        for size in {32..1024..32}; do
            local sizes=$(util/instcount comp/llvm-ir/${srcname}_${size}.ll \
                | sed -n -E "s/[[:blank:]]*(${fns}) => ([0-9]+)$/[\1]=\2/p")
            local -A size_map="($sizes)"

            for fn in ${!size_map[@]}; do
                echo "${srcname},orig,${size},${size_map[$fn]}" \
                    >> ${bench}/results/size.csv
            done
        done

        # Now, the original program optimized:
        for size in {32..1024..32}; do
            local sizes=$(util/instcount comp/llvm-ir/${srcname}_${size}.opt.ll \
                | sed -n -E "s/[[:blank:]]*(${fns}) => ([0-9]+)$/[\1]=\2/p")
            local -A size_map="($sizes)"

            for fn in ${!size_map[@]}; do
                echo "${srcname},orig-opt,${size},${size_map[$fn]}" \
                    >> ${bench}/results/size.csv
            done
        done

        # Then, the isochronous version:
        for size in {32..1024..32}; do
            local sizes=$(util/instcount comp/llvm-ir/${srcname}_${size}_isochr.ll \
                | sed -n -E "s/[[:blank:]]*(${fns}) => ([0-9]+)$/[\1]=\2/p")
            local -A size_map="($sizes)"

            for fn in ${!size_map[@]}; do
                echo "${srcname},isochr,${size},${size_map[$fn]}" \
                    >> ${bench}/results/size.csv
            done
        done

        # And finally, the isochronous version optimized:
        for size in {32..1024..32}; do
            local sizes=$(util/instcount \
                comp/llvm-ir/${srcname}_${size}_isochr.opt.ll \
                | sed -n -E "s/[[:blank:]]*(${fns}) => ([0-9]+)$/[\1]=\2/p")
            local -A size_map="($sizes)"

            for fn in ${!size_map[@]}; do
                echo "${srcname},isochr-opt,${size},${size_map[$fn]}" \
                    >> ${bench}/results/size.csv
            done
        done
    done
    echo "Generated llvm-ir size CSV file: ${bench}/results/size.csv"
}
