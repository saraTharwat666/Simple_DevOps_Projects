![Netdata ](https://luvpreetsingh.github.io/assets/Netdata-alerts.gif)

README.md – Unified Netdata Monitoring Project
🖥️ Netdata Monitoring Automation

Goal:
This project demonstrates a full workflow to install, test, and clean up Netdata monitoring on a Linux system using automation scripts. The purpose is to learn DevOps practices and basic monitoring setup.

Project Overview

This project contains three scripts that work together:

setup.sh – Installs Netdata, configures it to listen on all IPs, and sets up a CPU alert.

test_dashboard.sh – Generates CPU load to test the Netdata dashboard alerts.

cleanup.sh – Removes Netdata and cleans up the system after testing.

A master script called run_all.sh runs all three scripts in order: Setup → Test → Cleanup.

Features

Automatic system update and Netdata installation.

CPU usage alerts set to trigger above 80%.

Test scripts generate CPU load to visualize alerts live on the dashboard.

Cleanup script removes Netdata and resets the system.

```Easy to run with a single command using run_all.sh.```

```How to Run

Clone the repository.

Ensure all scripts have execution permission (chmod +x *.sh).

Run the master script:

./run_all.sh


Open the Netdata Dashboard in a browser to see monitoring in real-time:

http://<VM_IP>:19999


Replace <VM_IP> with the IP of your virtual machine.
```



Project URL : https://roadmap.sh/projects/simple-monitoring-dashboard
