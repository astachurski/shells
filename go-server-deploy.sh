#!/bin/sh

clear

echo "installing java runtime..."

sudo apt-get update
sudo apt-get install openjdk-7-jre-headless

latest_go_server_name=go-server-15.1.0-1863.deb
latest_go_server_location=http://dl.bintray.com/gocd/gocd-deb/
latest_go_server_fname=$latest_go_server_location$latest_go_server_name

echo "gocd server source location is:" $latest_go_server_location
echo "gocd server version is:" $latest_go_server_name
echo "fname:" $latest_go_server_fname

echo "downloading go server package"

wget $latest_go_server_fname

echo "installing unzip"

sudo apt-get install unzip

echo "installing go-server"

sudo dpkg -i $latest_go_server_name
