FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
WORKDIR /app
COPY . .
RUN rm -rf node_modules
RUN yarn install
RUN yarn cache clean
