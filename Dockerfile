#version nodejs-10.9.0
#version nginx 1.15
FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .
RUN rm -rf node_modules
RUN npm install
CMD ["npm", "start"]

#RUN npm install
EXPOSE 80
