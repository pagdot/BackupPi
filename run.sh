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
sudo apt install -y git python3 python3-venv pyhton3-pip curl

echo "########################################"
echo "##             clone repo             ##"
echo "########################################"
echo
git clone https://github.com/pagdot/BackupPi

echo "########################################"
echo "##           setup ansible            ##"
echo "########################################"
echo
cd BackupPi
bash ./scripts/setup.sh

echo "########################################"
echo "##          deploy playbook           ##"
echo "########################################"
echo
bash ./scripts/deploy.sh
