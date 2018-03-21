#!/bin/sh



NOW=$(date +"%s,%Y-%m-%d %T")

if [ $server -ne 0 ]; then #false if equal to 0 or not a number (does show an error if not a number or not set, non fatal)
  echo "Server has been set to $server"
  srv="--server $server"
else
  echo "Automatically selecting server"
  srv=""
fi

speedtest-cli $srv --simple > /tmp/speedtest-results
# TODO check for errors


CSV_RESULTS=$(awk -vORS=, '{ print $2 }' < /tmp/speedtest-results | sed 's/,$//')
# TODO check for errors

# TODO check for empty file and create headers
# ts,datetime,ping,download,upload

echo $NOW,$CSV_RESULTS >> results.csv
