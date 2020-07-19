#!/usr/bin/env bash

# This is the main script, i.e. the entry point for building & collecting
# statistics from each benchmark.
source build.sh
source collect.sh

# Array of benchmarks to be transformed & analyzed.
declare -a benchs=(
    "comp"
    "mu" 
    "meng/chronos/aes"
    "meng/applied-crypto/3way"
    "meng/applied-crypto/des"
    "meng/applied-crypto/loki91"
    "ctbench/bearssl/hash/md5"
    "ctbench/dudect/aes32"
    "ctbench/dudect/donnabad"
)

while [ $# -gt 0 ]; do
    case $1 in
        -h|--help)
            shift
            echo -e "==============================================================================="
            echo -e "=====                     Build & collect statistics                      ====="
            echo -e "===============================================================================\n"
            echo -e "-h, --help\t\tPrint this help message"
            echo -e "-b, --build\t\tBuild & apply the invariant transformation"
            echo -e "\t\t\tto each benchmark"
            echo -e "-c, --collect\t\tCollect statistics from each benchmark. This option"
            echo -e "\t\t\tassumes that the benchmarks were previously built"
            echo -e "-a, --all\t\tBuild & collect"
            ;;
        -b|--build)
            shift
            # Build a specific benchmark.
            if [ $# -gt 0 ]; then
                benchs=("$1")
                shift
            fi
            build::all benchs
            ;;
        -c|--collect)
            shift
            # Collect data from a specific benchmark.
            if [ $# -gt 0 ]; then
                benchs=("$1")
                shift
            fi
            collect::all benchs
            ;;
        -a|--all)
            shift
            # Build and collect data from a specific benchmark.
            if [ $# -gt 0 ]; then
                benchs=("$1")
                shift
            fi
            build::all benchs && collect::all benchs
            ;;
        *)
            echo "Invalid option: $1"
            shift
    esac
done
