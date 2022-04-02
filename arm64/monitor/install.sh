#!/bin/bash

chmod +x *.sh armbian-monitor

passwords=""
more_password="y"

while [ "$more_password" = "y" ]
do
	echo "Masukkan password untuk root STB anda: "
	read password
	
	if [ ! "$passwords" ];then
		passwords="'$password'"
	else
		passwords="$passwords, '$password'"
	fi
	
	echo "Ada password lain? (y/n) : "
	read more_password
done

echo "STB_USERNAME=root
STB_PASSWORD=\"[$passwords]\"" > .env

echo "Install armbian-monitor.serivce"
cp ./armbian-monitor.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable armbian-monitor.service
systemctl restart armbian-monitor.service
echo "Instalasi selesai"
