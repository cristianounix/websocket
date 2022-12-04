FROM nginx:latest
# COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# COPY ./index.html /etc/nginx/nginx.conf
EXPOSE 80 443 8020
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]