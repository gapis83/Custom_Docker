FROM ubuntu/nginx:latest
WORKDIR /etc/nginx/
ARG USERNAME=nginx
COPY ./server/hello.c .
COPY ./part4.sh .
RUN apt-get update && apt-get -y install && \
    apt-get install gcc -y && \
    apt-get install spawn-fcgi -y && \
    apt-get install libfcgi-dev -y && \
    gcc -o ./hello.fcgi ./hello.c -lpthread -lfcgi && \
    rm -rf /var/lib/apt/lists && \
    usermod -aG daemon,adm,disk,sudo,root,nginx $USERNAME && \
    chmod +x part4.sh && \
    chown -R $USERNAME /var/log/nginx/error.log && \
    chown -R $USERNAME /var/lib/nginx/ && \
    chown -R $USERNAME /var/log/nginx/access.log && \
    chown -R $USERNAME . && \
    chown -R $USERNAME /var/run/
COPY ./server/hello.c .
COPY ./nginx/nginx.conf .
USER $USERNAME
CMD ["./part4.sh"]

