#!/bin/sh

echo $default_site > /home/engines/scripts/configurators/saved/default_site\r\n\r\n . /home/engines/functions/checks.sh\r\nrequired_values=\"default_site\"\r\ncheck_required_values    \r\n  \r\nif test  ${#default_site} -gt 4\r\n then  \r\n  cat /etc/nginx/templates/default_site.tmpl | sed \"/FQDN/s//$default_site/\" > /tmp/site.fqdn\r\n  cp /tmp/site.fqdn /etc/nginx/sites-enabled/default\r\nelse\r\n  cp /etc/nginx/templates/empty_default /etc/nginx/sites-enabled/default \t\r\nfi\r\n\r\nkill -HUP `cat /home/engines/run/nginx.pid`\r\nexit 0
