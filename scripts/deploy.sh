#!/usr/bin/env bash

set -e

PATH=${PWD}/env/bin:${PATH}

set -x

cd playbook/

time ansible-playbook main.yml -K --ask-vault-pass $@
