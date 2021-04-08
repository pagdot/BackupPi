#!/usr/bin/env bash

echo "########################################"
echo "##              apt update            ##"
echo "########################################"
echo
sudo apt update

echo "########################################"
echo "##             install git            ##"
echo "########################################"
echo
sudo apt install git

echo "########################################"
echo "##             clone repo             ##"
echo "########################################"
echo
git clone https://github.com/pagdot/BackupPip

echo "########################################"
echo "##           setup ansible            ##"
echo "########################################"
echo
cd BackupPip
bash ./scripts/ansible/setup.sh

echo "########################################"
echo "##          deploy playbook           ##"
echo "########################################"
echo
cd BackupPip
bash ./scripts/ansible/deploy.sh
