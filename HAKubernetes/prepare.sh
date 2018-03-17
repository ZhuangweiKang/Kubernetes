#!/bin/sh
# Install git
apt-get install git
# Pull repository
cd ~/
git clone https://github.com/ZhuangweiKang/Kubernetes.git
cd HAKubernetes

#Install Docker
./install-docker.sh
# Install kubeadm, kubelet, kubectl
./install-kubectl-kubelet-kubeadm.sh

sudo curl -o /usr/local/bin/cfssl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64
sudo curl -o /usr/local/bin/cfssljson https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
sudo chmod +x /usr/local/bin/cfssl*