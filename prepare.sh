#!/bin/sh
#Install Docker
./install-docker.sh
# Install kubeadm, kubelet, kubectl
./install-kubectl-kubelet-kubeadm.sh

# install CA and certs
# Install cfssl and cfssljson:
curl -o /usr/local/bin/cfssl https://pkg.cfssl.org/R1.2/cfssl_linux-amd64
curl -o /usr/local/bin/cfssljson https://pkg.cfssl.org/R1.2/cfssljson_linux-amd64
chmod +x /usr/local/bin/cfssl*
