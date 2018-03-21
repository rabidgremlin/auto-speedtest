#!/bin/sh

if [ ! -f results.csv ]; then
    echo "ts,datetime,ping,download,upload" > results.csv
fi

re='^[0-9]+$'
if [[ $delay =~ $re ]] ; then #If $delay is not a number (including when it isnt set)
  delay=5
fi
time=$(($delay * 60))# $delay is in minutes, $time is in seconds

while :
do
    echo "Running test...."
    ./capture.sh
    echo "Waiting $delay minutes..."
    sleep $time
done
