#!/bin/sh

# mendefinisikan variabel yang dipakai untuk nama image, versi image, dan nama akun GitHub
image_name="item-app"
image_version="v1"
github_account="skill-tzy"

# membuat image di Docker
echo -e "Building a new Docker image:"
docker build . -t $image_name:$image_version

# melihat daftar image di lokal
echo -e "\nViewing the list of Docker images:"
docker images

# mengubah nama image agar sesuai dengan format GitHub Container Registry
echo -e "\nGiving a new tag name to the Docker image to match the format of GitHub Container Registry:"
docker tag $image_name:$image_version ghcr.io/$github_account/$image_name:$image_version
docker images

# log masuk ke GitHub Container Registry
echo -e "\nLogin into GitHub Container Registry:"
docker login docker.pkg.github.com -u $github_account

# mengunggah image ke GitHub Container Registry
echo -e "\nPublishing image to GitHub Container Registry:"
docker push ghcr.io/$github_account/$image_name:$image_version

echo -e "\nDone."
