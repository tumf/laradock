FROM nginx:latest

MAINTAINER Mahmoud Zalt <mahmoud@zalt.me>

ADD nginx.conf /etc/nginx/
ADD laravel.conf /etc/nginx/sites-available/

RUN echo "upstream php-upstream { server php-fpm:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN usermod -u 1000 www-data
ADD start.sh /
RUN chmod +x /start.sh
RUN apt-get update && apt-get install -y apache2-utils

CMD ["/start.sh"]

EXPOSE 80 443
