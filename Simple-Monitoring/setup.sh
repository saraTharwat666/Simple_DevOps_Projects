#!/bin/bash

echo "🔄 Updating System..."
sudo apt update
sudo apt upgrade -y 

echo "⚡ Installing Netdata..."
sudo apt install netdata -y 

echo "🛠 Configuring Netdata to listen on all IPs..."
sudo sed -i 's/bind to = 127.0.0.1/bind to = 0.0.0.0/' /etc/netdata/netdata.conf 

echo "⚠ Setting up CPU alert..."
ALERT_FILE="/etc/netdata/health.d/cpu.conf"

cat <<EOF | sudo tee $ALERT_FILE
template: cpu_high
      on: system.cpu
    calc: average - idle
   every: 10s
    units: %
     warn: \$this > 80
     info: CPU usage is above 80%
EOF

echo "🔁 Restarting Netdata..."
sudo systemctl restart netdata 

echo "✅ Setup complete! Open your dashboard at http://92.168.94.128:19999"
