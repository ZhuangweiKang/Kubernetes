#!/bin/sh
sudo apt-get install keepalived
sudo service keepalived status
sudo service keepalived restart

echo "Step1: write keepalived config file /etc/keepalived/keepalived.conf"
echo "remember to modify state and priority"
echo "Step2: write keepalived health check script /etc/keepalived/check_apiserver.sh"
echo "Step3: restart keepalived"
