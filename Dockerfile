# Mengambil image base node 18 alpine dari docker image repository
FROM node:18-alpine3.14
# Membuat /app sebagai working directory docker
WORKDIR /app
# Mengcopy package.json dan package-lock.json ke working directory /app di docker
COPY package*.json ./
# Menambahan environment variable untuk production mode dan database host
ENV NODE_ENV=production
# Menginstall dependency
RUN npm install
# Mengcopy semua file pada directory ini ke working directory /app di docker
COPY . .
# Mengekspose port 3001
EXPOSE 3001
# Menjalankan aplikasi dengan perintah npm start
CMD ["npm", "start"]