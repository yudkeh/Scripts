#!/bin/bash
echo "Collecting servers list....."
echo ""

gcloud compute instances list | grep <user name>| awk -F ' ' '{print $1, $2}'  > /Users/<user name>/scripts/gcould-instance-on-off/serversList.txt

echo ""
echo "Starting all the servers from the list"
echo ""
while IFS= read -r line; do
  serverLine=($line)
  echo "Starting server: ${serverLine[0]}, in zone: ${serverLine[1]}"
  gcloud compute instances start ${serverLine[0]} --zone=${serverLine[1]}
done < /Users/<user name>/scripts/gcould-instance-on-off/serversList.txt

echo ""
echo "Sleeping 1 minute before shutting all servers down..."
echo ""
sleep 60

echo "Stopping all the servers from the list"
echo ""
while IFS= read -r line; do
  serverLine=($line)
  echo "Stopping server: ${serverLine[0]}, in zone: ${serverLine[1]}"
  gcloud compute instances stop ${serverLine[0]} --zone=${serverLine[1]}
done < /Users/<user name>/scripts/gcould-instance-on-off/serversList.txt