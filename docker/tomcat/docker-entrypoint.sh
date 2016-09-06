#!/bin/bash
set -e

cd /usr/share/tomcat7/bin
./catalina.sh run

while [ `netstat -an | grep 8080 | wc -l` -eq 0 ]
do
        echo "Wating for tomcat7 start up"
        sleep 3;
done

echo 'tomcat7 start up OK..........'

exec "$@"
