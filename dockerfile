FROM node:19-alpine
COPY package.json /app/
COPY server.js /app/

WORKDIR /app

RUN ls

RUN npm install
EXPOSE 3000
CMD ["node", "server.js"]
