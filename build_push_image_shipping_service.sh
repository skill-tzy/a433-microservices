#!/bin/sh

# Membuat image di Docker dengan format untuk GitHub Container Registry
docker build . -t ghcr.io/skill-tzy/shipping-service:latest

# Login masuk ke GitHub Container Registry
docker login ghcr.io -u skill-tzy -p $GHCR_PAT_TOKEN

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/skill-tzy/shipping-service:latest
