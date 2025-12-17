#!/bin/bash 


echo "🧹 Stopping Netdata service..."
sudo systemctl stop netdata 

echo "🗑 Removing Netdata package..."
sudo apt remove --purge netdata -y 

echo "🧹 Cleaning leftover files..."
sudo rm -rf /etc/netdata
sudo rm -rf /var/lib/netdata
sudo rm -rf /var/log/netdata
sudo rm -rf /usr/lib/netdata
sudo rm -rf /usr/sbin/netdata

echo "✅ Cleanup complete! Netdata has been removed."

