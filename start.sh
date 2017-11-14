#!/bin/sh

echo "Starting capture..."
./cap5min.sh & 

echo "Starting server web server.... Browse to http://localhost:8000"
python -m SimpleHTTPServer 

