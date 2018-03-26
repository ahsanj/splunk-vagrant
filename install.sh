#!/bin/bash

echo "Installing Splunk! ... please wait "
apt-get update > /dev/null 2>&1
apt-get install -y wget > /dev/null 2>&1

echo "Downloading Splunk"
wget -O wget -O splunk-7.0.3-fa31da744b51-Linux-x86_64.tgz 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.3&product=splunk&filename=splunk-7.0.3-fa31da744b51-Linux-x86_64.tgz&wget=true' > /dev/null 2>&1

mv splunk-7.0.3-fa31da744b51-Linux-x86_64.tgz /opt > /dev/null 2>&1

cd /opt

tar -xzvf splunk-7.0.3-fa31da744b51-Linux-x86_64.tgz > /dev/null 2>&1

cd splunk/bin

echo "Starting Splunk"
./splunk start --accept-license

echo "Splunk is avaiable on http://localhost:8080"
