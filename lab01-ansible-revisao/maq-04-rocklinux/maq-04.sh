#!/bin/bash
echo "========  | INSTALANDO SUDO  | ========"
# SE O SUDO NÃO ESTIVER INSTALADO
yum install -y sudo 

echo "========  | INSTALL EPEL RELIASE  | ========"
sudo yum -y install epel-release

echo "========  | CONFIGURANDO GETWAY PADRÃO  | ========"
cat <<EOT >> /etc/sysconfig/network-scripts/ifcfg-eth0

# CONFIGURAÇÃO DE GATEWAY PADRAO 
GATEWAY0=192.168.56.1
IPADDR0=192.168.56.5
PREFIX0=32
EOT

echo "========  | CONFIGURANDO SSH  | ========"
cat <<EOT >> /home/vagrant/.ssh/authorized_keys

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCwKVg48nkRwbmGKcEUBOi+vP0lQhergy8oLjWSCIaHe2D1zOjrT4CQwbOrQtBIAO4AaDlMhY2NJAlPIjzx4traV9q4/fiH2etjUs+u/U37M0SgQyfBqFR6tJNfUV4RdklU27Ok8fS07CfBdCFaC/4X/HBW3M6tBYU8/OfJChlbyClQmLr6E2QUuHlVqo3cXd0OthUen76r5zS/PaTILUzXgWNfsuqAUHJJHY2M6wklKHYS0XgllCP4jfRUFU8lUwxrqkStd7TNLiYSkJqIuqKVoYKDIgIGPCGLOYtN7naV1aa99S+fofDrSh+K1LAB0FHvcajzKOgqssuqWEJuZh1AafoZe5Tqa1B8iIkzqmUCmrDm1qW1A5WgQ1IyicXKdheDPOrIKbo6hq0gYc4zcmFbylNY6Q3eSEafBeDrIlAr8R9CTCc20WUbdjXjvFyvStwfNOrb0psuhnrg1d3GlJZ5YoBKFSlo9r0Msn+wm7GeD1PrjLttMYGJ31KGWB9XYfk= vagrant@lab01-ubuntu-maq-01
EOT

echo "========= | CONFIGURANDO HOSTS | ========="
cat <<EOT >> /etc/hosts

# HOSTS DO LABORATORIO
192.168.56.2 lab01-ubuntu-maq-01
192.168.56.3 lab01-ubuntu-maq-02
192.168.56.4 lab01-debian-maq-03
192.168.56.5 lab01-rocklinux-maq-04
EOT

echo "========= | CONFIGURANDO SUDORS | ========="
sudo yum -y install sshpass
cat <<EOT >> /etc/sudoers
# ELEVAÇÃO DE PRIVILEGIOS PARA USER VAGRANT
vagrant ALL=(ALL:ALL) NOPASSWD:ALL 
EOT