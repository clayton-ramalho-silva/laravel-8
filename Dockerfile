FROM wyveo/nginx-php-fpm:php74
WORKDIR /usr/share/nginx
RUN rm -rf /usr/share/nginx/html
COPY . /usr/share/nginx/
RUN chmod -R 775 /usr/share/nginx/storage/*
RUN chmod -R 775 /usr/share/nginx/storage /usr/share/nginx/bootstrap/cache
RUN chmod o+w ./storage/ -R
RUN ln -s public html
