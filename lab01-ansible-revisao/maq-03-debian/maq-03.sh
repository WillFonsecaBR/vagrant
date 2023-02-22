#!/bin/bash

echo "========  | CONFIGURANDO SSH  | ========"
cat <<EOT >> /etc/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCzGTENfdtOqzaIIstAj0aA7GlIGvAwhSUxKLxZo4WSQ2S+IqLRUsVzSeZ580HLvGBsVRns+Ybw0WP/fbGdtx4pm9oe4aW8p2TIUJNpAokSQkqxMpPfx5V945lr6Db2U5u/RniqzqPOZIzuOtjQmpQg11u5kHocfh7p6qmbHEAJIHdYZbDD+bqyzxioXLlm+runRH6TF2eEzOf4em+uqQLWyI1R5taFIp4kY2uP2XGA4l/lq9+0XTrMyYRUiwvxPrj23RsQ1x0zI7643AaufvIzOCVo15HSaZBXy35YAQuBjU8PPR6fZOitowGnku8IU0qDJhcqv3xyz1xKhTZKqtNoaZlJ77GTiuxxLsvFtpod7izGDPFTH31G8ev2B/ELfMDEMwAyG1ToLgGXP5fl4NEH0Yu6u+2QLZ3ILTrR0en6msMWXVHQyiVE17IfwUd4b4TxPmbl8WdJSsGF+EJZJifLs5cd6ZsqOAVIRIuHhXAyWnHnyEBOjfn4VuqXL4TCW/U= vagrant@lab01-ubuntu-maq-01
EOT
