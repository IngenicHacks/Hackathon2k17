#!/bin/bash

backup_files="/home /etc /root /var /opt"
dest=$(pwd)
time=$(date +%R)
hostname=$(hostname -s)
archive="$time_$hostname.tgz"

echo -e "Backing up $backup_files ..."
tar czf $dest/$archive $backup_files

echo -e
echo -e "Backup complete, please transfer the tarball to the backup server! Use this command: \nscp $archive team7@192.168.7.69:/opt/backups/"

echo -e "\nCheck with Nick or Joey (the capitan guys for team 7 and 6) to make sure the IP hasn't changed on the backup server. It is also protecting our network with an IDS that will need to be stopped before the transfer."

echo -e "\nTry to run backups at least once every hour incase something breaks"

