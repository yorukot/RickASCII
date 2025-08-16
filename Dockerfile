FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --only=production

COPY . .
COPY ./display ./display --chmod=755

EXPOSE 80

CMD ["node", "index.js"]