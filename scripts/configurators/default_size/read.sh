#!/bin/sh

if test -f /home/engines/scripts/configurators/saved/default_site\r\n\tthen\r\n\t\tdefault_site=`cat /home/engines/scripts/configurators/saved/default_site`\r\n\t\techo '{\"default_site\":\"'$default_site'\"}'\r\n\telse\r\n\techo '{\"default_site\":\"Not Saved\"}'\r\n\r\nfi\r\n\r\nexit 0
