#!/bin/bash
set -euo pipefail

sudo cloud-init clean --logs
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*
sudo yum clean all
