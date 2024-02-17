# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory untuk container
WORKDIR /app

# Menyalin seluruh source code ke working directory di container
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos bahwa port yang digunakan oleh aplikasi adalah 8080
EXPOSE 8080

# Saat container diluncurkan, jalankan server dengan perintah npm start
CMD ["npm", "start"]

