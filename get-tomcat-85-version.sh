#!/bin/sh

curl -sS https://tomcat.apache.org/tomcat-8.5-doc/index.html |grep "Apache Tomcat 8 (8.5...)" |tr ' ' '\n' |grep "(8.5" |sed -e s/\(//g -e s/\)//g
