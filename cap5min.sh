#!/bin/sh

if [ ! -f results.csv ]; then
    echo "ts,datetime,ping,download,upload" > results.csv
fi

while :
do
    echo "Running test...."
    ./capture.sh
    echo "Waiting 5 minutes..."
    sleep 300
done
