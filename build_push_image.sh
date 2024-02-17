#!/bin/sh

# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag item-app ghcr.io/adzkiaadi/item-app:v1

# login masuk ke GitHub Container Registry
echo $PAT | docker login ghcr.io --username adzkiaadi --password-stdin

# mengunggah image ke GitHub Container Registry
docker push ghcr.io/adzkiaadi/item-app:v1
