#!/bin/bash
set -euo pipefail

sudo yum clean all
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo rm -f /root/.ssh/authorized_keys
sudo rm -f /home/ec2-user/.ssh/authorized_keys
history -c
