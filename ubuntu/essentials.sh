#!/bin/bash

set -e
set -x

##
# System update
##
apt-get update
sleep 10
apt-get -y full-upgrade
sleep 10
apt-get install -y terminator git flatpak firefox apt-transport-https curl wget htop

##
# Visual Studio Code
##
wget https://go.microsoft.com/fwlink/?LinkID=760868 -O /tmp/vscode.deb
dpkg -i /tmp/vscode.deb

##
# OpenJDK 8 Zulu
##
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0xB1998361219BD9C9
apt-add-repository 'deb http://repos.azulsystems.com/ubuntu stable main'

##
# Netbeans
##
apt-get install -y netbeans

##
# PHP 7.2
##
apt-get install -y \
    php7.2 \
    php7.2-sqlite3 \
    php7.2-xml \
    php7.2-mysql \
    php7.2-pgsql \
    php7.2-json \
    php7.2-fpm \
    php7.2-common \
    php7.2-curl \
    php7.2-cli \
    php7.2-cgi \
    php7.2-xmlrpc \
    php7.2-zip \
    php7.2-xsl

##
# Docker
##
curl -sSL https://get.docker.io | sh
