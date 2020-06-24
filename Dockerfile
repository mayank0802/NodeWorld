#version nodejs-10.9.0
#version nginx 1.15
FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .

#RUN npm install
EXPOSE 80

CMD ["node", "app.js"]

