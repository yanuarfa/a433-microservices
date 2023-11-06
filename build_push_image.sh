# Inisialisasi shell script
#!/bin/bash

# Membuild image item app dari dockerfile
docker build . -t item-app:v1

# Mengubah nama image item-app:v1 menjadi sesuai dengan github container registry
docker tag item-app:v1 ghcr.io/yanuarfa/item-app:v1

# Melakukan login ke container registry github
echo $GITHUB_CONTAINER_TOKEN | docker login ghcr.io --username yanuarfa --password-stdin

# Melakukan push image item-app:v1 ke github container registry
docker push ghcr.io/yanuarfa/item-app:v1