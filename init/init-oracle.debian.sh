#! /bin/sh
### BEGIN INIT INFO
# Provides:          oracle
# Required-Start:    $network $remote_fs $syslog
# Required-Stop:     $network $remote_fs $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Init script for Oracle database
### END INIT INFO

# Author: Laszlo Csontos <laszlo.csontos@liferay.com>
#
# Please remove the "Author" lines above and replace them
# with your own name if you copy and modify this script.

# Do NOT "set -e"

# PATH should only include /usr/* if it runs after the mountnfs.sh script

ORACLE_HOSTNAME=localhost
ORACLE_BASE=/opt/oracle
TNS_ADMIN=$ORACLE_BASE/network/admin

ORACLE_HOME=$ORACLE_BASE/product/rdbms11203
ORACLE_OWNER=oracle
ORACLE_UNQNAME=LPISSUES

PATH=/sbin:/usr/sbin:/bin:/usr/bin:$ORACLE_HOME/bin
DESC="Oracle database"
NAME=oracle
SCRIPTNAME=/etc/init.d/$NAME

# Exit if the package is not installed
[ -x $ORACLE_HOME/bin/dbstart -a -x $ORACLE_HOME/bin/dbshut ] || exit 0

# Load the VERBOSE setting and other rcS variables
. /lib/init/vars.sh

# Define LSB log_* functions.
# Depend on lsb-base (>= 3.2-14) to ensure that this file is present
# and status_of_proc is working.
. /lib/lsb/init-functions

check_status() {
	PROCESS_COUNT=`ps -u $ORACLE_OWNER -o args | grep -c ^ora.*$ORACLE_UNQNAME`

	[ $PROCESS_COUNT -ge 15 ] && return 1 || return 0
}

#
# Function that starts the daemon/service
#
do_start()
{
	# Return
	#   0 if daemon has been started
	#   1 if daemon was already running
	#   2 if daemon could not be started
	check_status
	[ $? -gt 0 ] && return 1

	su - $ORACLE_OWNER -c \
		"env ORACLE_UNQNAME=${ORACLE_UNQNAME} \
			ORACLE_HOSTNAME=${ORACLE_HOSTNAME} \
			TNS_ADMIN=${TNS_ADMIN} \
			${ORACLE_HOME}/bin/dbstart ${ORACLE_HOME}"

	check_status
	[ $? -gt 0 ] && return 0 || return 2
}

#
# Function that stops the daemon/service
#
do_stop()
{
	# Return
	#   0 if daemon has been stopped
	#   1 if daemon was already stopped
	#   2 if daemon could not be stopped
	#   other if a failure occurred
	check_status
	[ $? -lt 1 ] && return 1

	su - $ORACLE_OWNER -c \
		"env ORACLE_UNQNAME=${ORACLE_UNQNAME} \
			ORACLE_HOSTNAME=${ORACLE_HOSTNAME} \
			TNS_ADMIN=${TNS_ADMIN} \
			${ORACLE_HOME}/bin/dbshut ${ORACLE_HOME}"

	check_status
	[ $? -lt 1 ] && return 0 || return 2
}

#
# Function that sends a SIGHUP to the daemon/service
#
do_reload() {
	do_stop
	do_start

	return 0
}

case "$1" in
  start)
	[ "$VERBOSE" != no ] && log_daemon_msg "Starting $DESC" "$NAME"
	do_start
	case "$?" in
		0|1) [ "$VERBOSE" != no ] && log_end_msg 0 ;;
		2) [ "$VERBOSE" != no ] && log_end_msg 1 ;;
	esac
	;;
  stop)
	[ "$VERBOSE" != no ] && log_daemon_msg "Stopping $DESC" "$NAME"
	do_stop
	case "$?" in
		0|1) [ "$VERBOSE" != no ] && log_end_msg 0 ;;
		2) [ "$VERBOSE" != no ] && log_end_msg 1 ;;
	esac
	;;
  status)
	status_of_proc "$DAEMON" "$NAME" && exit 0 || exit $?
	;;
  #reload|force-reload)
	#
	# If do_reload() is not implemented then leave this commented out
	# and leave 'force-reload' as an alias for 'restart'.
	#
	#log_daemon_msg "Reloading $DESC" "$NAME"
	#do_reload
	#log_end_msg $?
	#;;
  restart|force-reload)
	#
	# If the "reload" option is implemented then remove the
	# 'force-reload' alias
	#
	log_daemon_msg "Restarting $DESC" "$NAME"
	do_stop
	case "$?" in
	  0|1)
		do_start
		case "$?" in
			0) log_end_msg 0 ;;
			1) log_end_msg 1 ;; # Old process is still running
			*) log_end_msg 1 ;; # Failed to start
		esac
		;;
	  *)
		# Failed to stop
		log_end_msg 1
		;;
	esac
	;;
  *)
	#echo "Usage: $SCRIPTNAME {start|stop|restart|reload|force-reload}" >&2
	echo "Usage: $SCRIPTNAME {start|stop|status|restart|force-reload}" >&2
	exit 3
	;;
esac
