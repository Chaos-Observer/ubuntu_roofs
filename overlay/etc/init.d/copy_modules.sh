#!/bin/bash -e
### BEGIN INIT INFO
# Provides:     resize-disk
# Required-Start:
# Required-Stop:
# Default-Start:
# Default-Stop:
# Short-Description:
# Description:       Resize disk for rockchip platform environment
### END INIT INFO

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

case "$1" in
	start)
		if [ ! -d /lib/modules ]; then
			 cp -rf /boot/lib/modules/ /lib/modules
		fi
		;;
	stop)
		;;
	restart|reload)
		;;
	*)
		echo "Usage: $0 {start|stop|restart}"
		exit 1
esac

exit $?
