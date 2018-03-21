# auto-speedtest
Scripts to run speedtest.net test at regular intervals and graph the  results

Packaged as a Docker container for ease of use.

To build run:
```
docker build -t speedtest .
```

To start, run:
```
docker run --rm -it -e delay=5 -e server=0 -p 8000:8000 speedtest
```

Then browse to http://localhost:8000

A speed test will run every 5 minutes. The webpage with the results will auto-refresh every 1 minute.
