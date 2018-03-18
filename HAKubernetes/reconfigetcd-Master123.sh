#!/bin/sh

./getHostIP-Master123.sh
<<<<<<< HEAD

cd /etc/kubernetes/pki/etcd/
=======
echo $PEER_NAME
echo $PRIVATE_IP
cd /etc/kubernetes/pki/etcd
>>>>>>> 81af3a6fea250122cb76479b23201f3baf9859ea
cfssl print-defaults csr > config.json
sed -i '0,/CN/{s/example\.net/'"$PEER_NAME"'/}' config.json
sed -i 's/www\.example\.net/'"$PRIVATE_IP"'/' config.json
sed -i 's/example\.net/'"$PEER_NAME"'/' config.json

cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=server config.json | cfssljson -bare server
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem -config=ca-config.json -profile=peer config.json | cfssljson -bare peer
