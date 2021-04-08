#!/usr/bin/env bash

set -e

PATH=${PWD}/env/bin:${PATH}

set -x

python3 -m venv env

pip3 install ansible

ansible-galaxy install -r galaxy-requirements.yml
