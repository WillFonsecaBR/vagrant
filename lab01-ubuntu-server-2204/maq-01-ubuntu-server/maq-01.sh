#!/bin/bash

echo "========== | INSTALANDO PYTHON | =========="
sudo apt install -y python3

echo "========== | INSTALANDO ANSIBLE | =========="
sudo apt install -y ansible

echo "========= | CONFIGURANDO HOSTS | ========="
cat <<EOT >> /etc/hosts
192.168.56.2 lab01-ubuntu-maq-01
192.168.56.3 lab01-ubuntu-maq-02
192.168.56.4 lab01-ubuntu-maq-03
EOT
