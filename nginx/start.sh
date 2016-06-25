#!/bin/bash
if [ $AUTH_USER_PASSWORD ];then
  echo "${AUTH_USER_PASSWORD}" > /etc/nginx/htpasswd
  sed -i -e 's/#auth_basic/auth_basic/g' < /etc/nginx/nginx.conf
fi
nginx
