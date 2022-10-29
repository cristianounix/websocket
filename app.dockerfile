# Building Client...
FROM node:14-alpine
ARG APP_ENV
ENV HOME=/home/app/
COPY package.json package-lock.json $HOME
WORKDIR $HOME
# RUN npm install && yarn cache clean
RUN npm install 
# COPY . $HOME
COPY server.js $HOME
# RUN VARIABLE=$APP_ENV npm server.js
# RUN node server.js
CMD ["node", "server.js"]

# # Setting up Nginx
# FROM nginx:1.19.2-alpine
# COPY --from=0 /home/app/client_docker/build/ /usr/share/nginx/html/
# COPY nginx.conf /etc/nginx/conf.d/default.conf
# EXPOSE 80
# CMD ["nginx", "-g", "daemon off;"]
