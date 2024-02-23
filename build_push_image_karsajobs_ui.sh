#!/bin/sh

# Membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t skill-tzy/karsajobs-ui:latest .

# mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag skill-tzy/karsajobs-ui:latest ghcr.io/skill-tzy/karsajobs-ui:latest

# login masuk ke GitHub Container Registry
docker login --username skill-tzy --password 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 ghcr.io

# mengunggah image ke GitHub Container Registry
docker push ghcr.io/skill-tzy/karsajobs-ui:latest
