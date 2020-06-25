#version nodejs-10.9.0
#version nginx 1.15
FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .
RUN rm -rf node_modules
RUN npm install

#RUN npm install
EXPOSE 80
CMD ["npm", "start"]
