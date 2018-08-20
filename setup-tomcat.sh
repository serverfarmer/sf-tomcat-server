#!/bin/sh

version=$1
dest=$2

file="apache-tomcat-$version"
major=`echo $version |cut -d. -f1`
parent=`dirname $dest`
mirror="http://ftp.piotrkosoft.net/pub/mirrors/ftp.apache.org"

mkdir -p $parent
DIR="`pwd`"

if [ ! -d /opt/$file ]; then
	cd /opt
	wget $mirror/tomcat/tomcat-$major/v$version/bin/$file.tar.gz
	tar xzf $file.tar.gz
	rm -f $file.tar.gz
	cd "$DIR"
fi

if [ ! -d $dest ]; then
	cd /opt/$file
	mkdir $dest
	cp -at $dest conf logs temp webapps work
	cd "$DIR"
fi

ln -sf /opt/$file/bin $dest
ln -sf /opt/$file/lib $dest

if ! grep -q CATALINA_HOME /etc/environment; then
	echo "CATALINA_HOME=\"$dest\"" >>/etc/environment
fi
