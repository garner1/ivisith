# DISTRIBUTION OF COUNTS PER SECTION
parallel -k "tail -n+2 P2.4.tsv | cut -f2- | datamash sum {}" ::: $(seq 1 `head -1 P2.4.tsv|awk '{print NF}'`) | histogram.py
