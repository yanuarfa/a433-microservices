#!/bin/bash

# Membuild image sesuai dengan konfigurasi dan menggunakan tag sesuai github container registry
docker build -t ghcr.io/yanuarfa/shipping-service:latest .

# Login ke github container registry
echo $GHCR_TOKEN | docker login ghcr.io --username yanuarfa --password-stdin

# Push image ke github container registry
docker push ghcr.io/yanuarfa/shipping-service:latest