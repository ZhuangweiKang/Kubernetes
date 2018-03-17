#!/bin/sh
sudo scp root@129.59.107.140:/etc/kubernetes/pki/* /etc/kubernetes/pki
rm apiserver.crt

cd ~
mkdir HAKubernetes
cd HAKubernetes

cat >config.yaml <<EOF
apiVersion: kubeadm.k8s.io/v1alpha1
kind: MasterConfiguration
api:
  advertiseAddress: 10.10.26.***
etcd:
  endpoints:
  - https://129.59.107.140:2379
  - https://129.59.107.141:2379
  - https://129.59.107.133:2379
  caFile: /etc/kubernetes/pki/etcd/ca.pem
  certFile: /etc/kubernetes/pki/etcd/client.pem
  keyFile: /etc/kubernetes/pki/etcd/client-key.pem
networking:
  podSubnet: 192.168.0.0/16
apiServerCertSANs:
- 10.10.26.100
apiServerExtraArgs:
  apiserver-count: "3"
EOF

sudo kubeadm init --config=config.yaml
