#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_10_WWEJ_linux64.bin" ]
then
	wget https://s3-us-west-1.amazonaws.com/cf10ct/ColdFusion_10_WWEJ_linux64.bin
	chmod 755 ColdFusion_10_WWEJ_linux64.bin
fi

if [ ! -f "hotfix_013.jar" ]
then
	wget https://s3-us-west-1.amazonaws.com/cf10ct/hotfix_013.jar
	chmod 755 hotfix_013.jar
fi

if [ ! -f "cf10_mdt_updt.jar" ]
then
	wget https://s3-us-west-1.amazonaws.com/cf10ct/cf10_mdt_updt.jar
	chmod 755 cf10_mdt_updt.jar
fi
