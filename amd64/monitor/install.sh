#!/bin/bash

chmod +x *.sh armbian-monitor

echo "Masukkan password untuk root STB anda: "
read password
echo "STB_USERNAME=root
STB_PASSWORD=$password" > .env

echo "Install armbian-monitor.serivce"
cp ./armbian-monitor.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable armbian-monitor.service
systemctl restart armbian-monitor.service
echo "Instalasi selesai"
