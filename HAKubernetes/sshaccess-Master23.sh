#!/bin/sh

# operations on Master2 and Master3
ssh-keygen -t rsa -b 4096 -C "zhuangwei.kang@vanderbilt.edu"

cat ~/.ssh/id_rsa.pub

# copy the output to ~/.ssh/authorized_keys file in Master1
