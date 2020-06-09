#!/bin/sh

mkdir -p /var/lib/nginx /var/run/nginx/ \r\nchown www-data /var/lib/nginx /var/run/nginx/ /etc/nginx/sites-enabled \r\nmkdir -p /home/engines/scripts/configurators/saved/  /home/consumers/saved/\r\nchown www-data -R /etc/nginx/sites-enabled /home/engines/scripts/configurators/saved  /home/consumers/saved/
