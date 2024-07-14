#! /bin/bash
spawn-fcgi -a 127.0.0.1 -p 8080 -f /etc/nginx/hello.fcgi -F 1
nginx -g "daemon off;"