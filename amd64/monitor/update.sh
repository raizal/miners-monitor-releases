systemctl stop armbian-monitor.service
wget -O https://github.com/raizal/miners-monitor-releases/raw/main/monitor/armbian-monitor
systemctl start armbian-monitor.service