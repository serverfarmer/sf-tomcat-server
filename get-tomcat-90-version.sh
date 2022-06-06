#!/bin/sh

curl -sS https://tomcat.apache.org/tomcat-9.0-doc/index.html |grep "Apache Tomcat 9 (9.0...)" |tr ' ' '\n' |grep "(9.0" |sed -e s/\(//g -e s/\)//g
