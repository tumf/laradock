#!/bin/bash
if [ $AUTH_PASSWORD ]; then
  /usr/bin/htpasswd -b -c /etc/nginx/htpasswd user ${AUTH_PASSWORD}
  sed -i -e 's/#auth_basic/auth_basic/g' < /etc/nginx/nginx.conf
fi
nginx
