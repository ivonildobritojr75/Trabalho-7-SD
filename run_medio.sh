#!/bin/bash
mkdir -p results
locust -f locustfile.py --headless -u 100 -r 5 --run-time 10m \
  --host http://localhost:8080 --csv results/medio --csv-full-history
