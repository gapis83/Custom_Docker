#! /bin/bash
cp ./hello.c /etc/nginx/hello.c
cp ./nginx/nginx.conf /etc/nginx/nginx.conf
gcc -o /etc/nginx/hello.fcgi /etc/nginx/hello.c -lpthread -lfcgi
spawn-fcgi -a 127.0.0.1 -p 8080 -f /etc/nginx/hello.fcgi -F 1
systemctl reload nginx
rm /etc/nginx/hello.c
