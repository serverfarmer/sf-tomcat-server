#!/bin/sh

/opt/farm/scripts/setup/extension.sh sf-java8

/opt/farm/ext/packages/utils/install.sh libtcnative-1

version=`/opt/farm/ext/tomcat-server/get-tomcat-90-version.sh`
/opt/farm/ext/tomcat-server/setup-tomcat.sh $version /srv/sites/tomcat
