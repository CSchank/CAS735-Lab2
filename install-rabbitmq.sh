#!/bin/sh

sudo apt update
sudo apt install -y curl software-properties-common apt-transport-https lsb-release

curl -1sLf 'https://dl.cloudsmith.io/public/rabbitmq/rabbitmq-erlang/setup.deb.sh' | sudo -E bash

sudo apt update
sudo apt install -y erlang

curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.deb.sh | sudo bash

sudo apt update

sudo apt install -y rabbitmq-server

sudo rabbitmq-plugins enable rabbitmq_management