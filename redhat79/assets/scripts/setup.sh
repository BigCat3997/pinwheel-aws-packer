#!/bin/bash
set -euo pipefail

sudo yum update -y

# Add nginx official repo for RHEL/CentOS 7
sudo tee /etc/yum.repos.d/nginx.repo > /dev/null <<'EOF'
[nginx-stable]
name=nginx stable repo
baseurl=https://nginx.org/packages/centos/$releasever/$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true
EOF

sudo yum install -y \
    python3 \
    python3-pip \
    nginx \
    java-21-openjdk \
    java-21-openjdk-devel

sudo systemctl enable nginx
sudo systemctl start nginx