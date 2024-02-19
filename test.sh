#!/bin/sh

# mendefinisikan variabel yang dipakai untuk nama image, versi image, dan nama akun GitHub
image_name="item-app"
image_version="v1"
github_account="skill-tzy"

# membuat image di Docker
docker build . -t $image_name:$image_version

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag $image_name:$image_version ghcr.io/$github_account/$image_name:$image_version
docker images

# log masuk ke GitHub Container Registry
docker login docker.pkg.github.com -u $github_account

# mengunggah image ke GitHub Container Registry
docker push ghcr.io/$github_account/$image_name:$image_version
