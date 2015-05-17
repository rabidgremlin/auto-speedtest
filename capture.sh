#!/bin/sh




NOW=$(date +"%s,%Y-%m-%d %T")

speedtest-cli --server 4135 --simple > /tmp/speedtest-results
# TODO check for errors


CSV_RESULTS=$(awk -vORS=, '{ print $2 }' < /tmp/speedtest-results | sed 's/,$//')
# TODO check for errors

# TODO check for empty file and create headers
# ts,datetime,ping,download,upload

echo $NOW,$CSV_RESULTS >> results.csv

