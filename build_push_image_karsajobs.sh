#!/bin/sh

# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t skill-tzy/karsajobs:latest .

# mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag skill-tzy/karsajobs:latest ghcr.io/skill-tzy/karsajobs:latest

# login masuk ke GitHub Container Registry
docker login ghcr.io -u skill-tzy -p $GHCR_PAT_TOKEN

# mengunggah image ke GitHub Container Registry
docker push ghcr.io/skill-tzy/karsajobs:latest
