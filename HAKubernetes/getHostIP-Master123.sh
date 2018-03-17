#!/bin/sh

export PEER_NAME=$(hostname)
export PRIVATE_IP=$(ip addr show ens3 | grep -Po 'inet \K[\d.]+')
echo $PEER_NAME
echo $PRIVATE_IP
