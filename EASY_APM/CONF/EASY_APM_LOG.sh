#!/bin/sh

# EASY_APM MANAGE : apache
/usr/local/httpd2/logs/*log {
	postrotate
	/usr/bin/killall -HUP httpd
	endscript
}

# EASY_APM MANAGE : mysql
/usr/local/mysql/data/*log {
    copytruncate
    daily
    rotate 10
    missingok
    notifempty
    dateext
}

# EASY_APM MANAGE : FTP(xferlog)
/var/log/xferlog {
	missingok
	nocompress
	postrotate
	/usr/bin/killall -HUP proftpd > /dev/null 2>&1
	endscript
}
