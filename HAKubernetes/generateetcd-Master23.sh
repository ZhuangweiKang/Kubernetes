#!/bin/sh

# all operations are on Master2 and Master3
sudo mkdir -p /etc/kubernetes/pki/etcd
cd /etc/kubernetes/pki/etcd
sudo scp root@129.59.107.140:/etc/kubernetes/pki/etcd/ca.pem .
sudo scp root@129.59.107.140:/etc/kubernetes/pki/etcd/ca-key.pem .
sudo scp root@129.59.107.140:/etc/kubernetes/pki/etcd/client.pem .
sudo scp root@129.59.107.140:/etc/kubernetes/pki/etcd/client-key.pem .
sudo scp root@129.59.107.140:/etc/kubernetes/pki/etcd/ca-config.json .
