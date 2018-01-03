#!/bin/bash

if [ ! -e /var/lib/mysql/ibdata1 ] ; then
  chown -R mysql. /var/lib/mysql
  bash /root/postinstall.sh
  service mysqld start && mysql -e "GRANT ALL ON *.* TO root@'%' WITH GRANT OPTION" && service mysqld stop
fi

oldowner=$(ls -ln /var/lib/mysql/ibdata1 | awk '{print $3}')
oldgroup=$(ls -ln /var/lib/mysql/ibdata1 | awk '{print $4}')

chown -R mysql. /var/lib/mysql

if [ -d /docker-entrypoint-initdb.d ]; then
  service mysqld start
  for f in /docker-entrypoint-initdb.d/*; do
    case "$f" in
      *.sh) echo "$0: running $f"; . "$f" ;;
      *.sql) echo "$0: running $f"; mysql -uroot < "$f"; echo ;;
      *) echo "$0: ignoring $f" ;;
    esac
    echo
  done
  service mysqld stop
fi

/usr/sbin/mysqld --user=mysql "$@"

chown -R $oldowner.$oldgroup /var/lib/mysql

