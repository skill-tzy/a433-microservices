# Mengambil base image Node.js version 21
FROM node:21-alpine

# Menentukan working directory container pada /app
WORKDIR /app

# Menyalin source code ke working directory di container
COPY . .

# Menginstal dependencies
RUN npm install

# Mengekspos port yang digunakan aplikasi yaitu 3000
EXPOSE 3000

# Menjalankan server saat container diluncurkan
CMD ["npm", "start"]
