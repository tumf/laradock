#!/bin/bash
rm -rf /var/www/laravel
cp -rf /src /var/www/laravel
chmod 777 -R /var/www/laravel/storage
chmod 777 -R /var/www/laravel/bootstrap/cache
