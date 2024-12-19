#!/bin/bash
for k in 9
do
    mkdir -p output/deer/"$k"mer_indices
    # mkdir -p output/deer/"$k"mer_oob_indices
    python PORTEKfind.py input/deer/EPI_SET_240422va.fasta output/deer/"$k"mer_indices/ --k "$k" --group deer &
    python PORTEKfind.py input/deer/EPI_SET_240422rw.fasta output/deer/"$k"mer_indices/ --k "$k" --group humearly &  
    python PORTEKfind.py input/deer/EPI_SET_240422qc.fasta output/deer/"$k"mer_indices/ --k "$k" --group humlate & 
    # python PORTEKfind.py input/deer/EPI_SET_240422oy.fasta output/deer/"$k"mer_oob_indices/ --k "$k" --group deeroob &
    # python PORTEKfind.py input/deer/EPI_SET_240422xu.fasta output/deer/"$k"mer_oob_indices/ --k "$k" --group humoob &   
done