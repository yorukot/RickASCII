FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .
COPY --chmod=755 ./display ./display

EXPOSE 80

CMD ["node", "index.js"]