#!/bin/sh

curl -sS http://tomcat.apache.org/tomcat-8.0-doc/index.html |grep "Apache Tomcat 8 (8.0...)" |tr ' ' '\n' |grep "(8.0" |sed -e s/\(//g -e s/\)//g
