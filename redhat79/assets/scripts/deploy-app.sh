#!/bin/bash
set -euo pipefail

sudo mkdir -p /opt/python-app
sudo chown -R ec2-user:ec2-user /opt/python-app

# Create venv and install dependencies as ec2-user
python3 -m venv /opt/python-app/venv
/opt/python-app/venv/bin/pip install --upgrade pip --disable-pip-version-check
/opt/python-app/venv/bin/pip install flask

# Deploy app.py
cp /tmp/hello-world/app.py /opt/python-app/app.py
