FROM nginx:latest

COPY conf.d /etc/nginx/conf.d
COPY html /var/www