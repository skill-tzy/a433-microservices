#!/bin/sh

# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag item-app:v1 ghcr.io/skill-tzy/item-app:v1

# login masuk ke GitHub Container Registry
docker login --username skill-tzy --password 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 ghcr.io

# mengunggah image ke GitHub Container Registry
docker push ghcr.io/skill-tzy/item-app:v1
