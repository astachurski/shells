#!/bin/sh

clear

echo "installing java runtime..."

sudo apt-get update
sudo apt-get install openjdk-7-jre-headless

latest_go_agent_name=go-agent-15.1.0-1863.deb
latest_go_agent_location=http://dl.bintray.com/gocd/gocd-deb/
latest_go_agent_fname=$latest_go_agent_location$latest_go_agent_name

echo "gocd agent source location is:" $latest_go_agent_location
echo "gocd agent version is:" $latest_go_agent_name
echo "fname:" $latest_go_agent_fname

echo "downloading go client package"

wget $latest_go_agent_fname

echo "installing unzip"

sudo apt-get install unzip

echo "installing go-agent"

sudo dpkg -i $latest_go_agent_name
