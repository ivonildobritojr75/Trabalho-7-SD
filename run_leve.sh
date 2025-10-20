#!/bin/bash
mkdir -p results
locust -f locustfile.py --headless -u 50 -r 5 --run-time 10m \
  --host http://localhost:8080 --csv results/leve --csv-full-history
