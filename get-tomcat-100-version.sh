#!/bin/sh

curl -sS https://tomcat.apache.org/tomcat-10.0-doc/index.html |grep "Apache Tomcat 10 (10.0...)" |tr ' ' '\n' |grep "(10.0" |sed -e s/\(//g -e s/\)//g
