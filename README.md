# PORT-EK
Pathogen Origin Recogition Tool (using) Enriched K-mers
This version is a proof-of-concept pipeline using Jupyter notebooks, used to generate results published in [our reference].
Version 2.0, which features improved performance and a command line interface for improved usability, is under development.

A tool for identification of genomic variants of virues that arise in connection with host change.
Based on k-mer counting, does not require MSA.
Can be used to find group-enriched variants for other sequences and groups than viruses and hosts.

Installation:
1. Clone this repo,
2. Create a Python virtual environment,
3. Install required packages using `pip install -r requirements.txt` ,

Quick usage guide:
1. Input viral genomes should be in fasta format. On file must contain isolates coming from one host, but there can be multiple files per host.
2. Extract the k-mers from input genomes by running `python PORTEKfind.py {path to fasta file} {output path} --k {k_mer length} --group {host name}`. Run `python PORTEKfind.py -h` for more help.
3. You can also modify the generate_*_kmers.sh scripts to run PORTEKfind.py with your data set.
4. To find the optimal k-mer length for your data set, copy one of the optimal_*_k_selection notebooks, edit the code to fit your data set and run it.
5. To find enriched k-mers, copy, edit and run one of the *_analysis notebooks. 
6. To perform host classification, copy, edit and run one of the *_classifier notebooks.  