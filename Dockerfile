#FROM ppdeassis/node-nginx-alpine:latest

# lets install dependencies
#WORKDIR /app
#COPY . .
#RUN rm -rf node_modules
#RUN yarn install
#RUN yarn cache clean
# builder container
#   - builds the frontend app (Vue, React, Webpack, ...)

# Use an official node image
FROM node:latest AS builder

WORKDIR /app

# Install depen


# ---


# runner container
#  - nginx, to serve static built Vue app

# Use an official nginx image
FROM nginx:1.13-alpine

# COPY dist from builder container to nginx html dir
COPY --from=builder /dist /usr/share/nginx/html

COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# No need for CMD. It'll fallback to nginx image's one, which
