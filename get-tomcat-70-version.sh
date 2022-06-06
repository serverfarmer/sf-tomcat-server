#!/bin/sh

curl -sS https://tomcat.apache.org/tomcat-7.0-doc/index.html |grep "Apache Tomcat 7 (7.0....)" |tr ' ' '\n' |grep "(7.0" |sed -e s/\(//g -e s/\)//g
