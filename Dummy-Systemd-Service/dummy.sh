#!/bin/bash


# writes a message to the log file every 10 seconds
while true; do
  echo "Dummy service is running..." >> /var/log/dummy-service.log
  sleep 10
done

