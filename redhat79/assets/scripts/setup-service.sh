#!/bin/bash
set -euo pipefail

sudo cp /tmp/hello-world/hello-world.service /etc/systemd/system/hello-world.service
sudo chmod 644 /etc/systemd/system/hello-world.service
sudo systemctl daemon-reload
sudo systemctl enable hello-world.service 2>&1
