#!/bin/bash
mkdir -p results
locust -f locustfile.py --headless -u 200 -r 10 --run-time 5m \
  --host http://localhost:8080 --csv results/pico --csv-full-history
