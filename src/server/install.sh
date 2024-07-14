#! /bin/bash
apt-get update && apt-get -y install
apt-get install gcc -y
apt-get install spawn-fcgi -y
apt-get install libfcgi-dev -y
apt install systemctl -y
rm -rf /var/lib/apt/lists
