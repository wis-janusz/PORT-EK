#!/bin/bash
for k in 15
do
    mkdir -p output/bat_vs_deer/"$k"mer_indices
    python PORTEKfind.py input/bat/bat.fasta output/bat_vs_deer/"$k"mer_indices/ --k "$k" --group bat &
    python PORTEKfind.py input/deer/EPI_SET_240422va.fasta output/bat_vs_deer/"$k"mer_indices/ --k "$k" --group deer &

done