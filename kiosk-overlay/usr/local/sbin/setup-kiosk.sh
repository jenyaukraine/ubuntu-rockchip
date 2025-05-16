#!/bin/bash
useradd -m -s /bin/bash kiosk || true
mkdir -p /etc/systemd/system/multi-user.target.wants
ln -sf /etc/systemd/system/kiosk.service /etc/systemd/system/multi-user.target.wants/kiosk.service
chown -R kiosk:kiosk /home/kiosk
