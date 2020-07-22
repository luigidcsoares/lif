#!/usr/bin/env bash

# We use the following scripts to collect statistics about each benchmark.
source cachegrind.sh
source measure.sh

# Takes the an array of benhcmarks (paths) to be analyzed.
collect::all() {
    local -n benchs_ref=$1
    for bench in ${benchs_ref[@]}; do
        echo "Collecting data from ${bench}"
        cachegrind::run "$bench"
        cachegrind::filter "$bench"
        # measure::time "$bench"
    done
    echo "Done"
}
