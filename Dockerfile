# Mengambil image base node 14 alpine dari docker image repository
FROM node:14-alpine

# Membuat /app sebagai working directory docker
WORKDIR /app

# Mengocopy semua file pada directory ini ke working directory /app di docker
COPY . /app

# Menambahan environment variable untuk production mode dan database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstall dependency untuk production dan menjalankan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspose port 8080
EXPOSE 8080

# Menjalankan aplikasi dengan perintah npm start
CMD [ "npm", "start" ]