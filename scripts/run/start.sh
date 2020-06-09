#!/bin/sh

if ! test -d /var/log/nginx\r\n then\r\n  mkdir -p  /var/log/nginx\r\nfi\r\n\t\r\nPID_FILE=/home/engines/run/nginx.pid\r\nexport PID_FILE\r\n. /home/engines/functions/trap.sh\r\n\r\n/home/engines/scripts/engine/clear_broken.sh\r\n\r\n/usr/sbin/nginx &\r\n\r\nstartup_complete\r\n\r\nwait\r\nexit_code=$?\r\n\t\r\nshutdown_complete
