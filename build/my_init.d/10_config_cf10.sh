#!/bin/sh

config=/tmp/config/cf10-linux64.tar.gz
target=/opt/coldfusion10
cp /var/www/d/neo-datasource.xml /opt/coldfusion10/cfusion/lib/neo-datasource.xml
cp /var/www/d/neo-datasource.xml /opt/coldfusion10/cfusion/lib/neo-runtime.xml
cp /var/www/d/new-configs/neo-runtime.xml /opt/coldfusion10/cfusion/lib/

if [ ! -f $config ]
then
	echo "No configuration package found at $config, skipping"
	exit 0
fi

echo "Extracting $config to $target..."
cd /tmp/config
tar vxzf $config -C $target
