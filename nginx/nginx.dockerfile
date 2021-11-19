FROM nginx:alpine

WORKDIR /var/www/html

#RUN apk add openssl;
#RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=localhost" -addext "subjectAltName=DNS:localhost" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;

COPY default.conf /etc/nginx/conf.d/default.conf