FROM ubuntu:19.10
COPY package*.json ./

RUN npm ci --only=production

COPY . .

EXPOSE 3000
CMD ["node", "app.js"]
