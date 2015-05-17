#!/bin/sh

NOW=$(date +"%s,%Y-%m-%d %T")

speedtest-cli --server 4135 --simple > /tmp/speedtest-results
CSV_RESULTS=$(awk -vORS=, '{ print $2 }' < /tmp/speedtest-results | sed 's/,$//')

echo $NOW,$CSV_RESULTS >> results.csv

