#!/usr/bin/env bash

set -e

PATH=${PWD}/env/bin:${PATH}

set -x

python3 -m venv env

pip3 install ansible

ansible-galaxy install --roles-path playbook -r galaxy-requirements.yml
