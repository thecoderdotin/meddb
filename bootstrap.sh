#!/bin/sh
# Run this file to setup the server to deploy Django projects.

mkdir /home/setup-files/
sudo apt-get update

sudo apt-get -y install git

# "pip install psycopg2" will throw errors without the following
sudo apt-get -y install libpq-dev python-dev python2.7-dev

sudo apt-get -y install postgresql postgresql-contrib

sudo apt-get -y install nginx

sudo apt-get -y install python-setuptools python-pip

sudo apt-get -y install supervisor

sudo pip install virtualenv virtualenvwrapper

# The following adds configuration files to ~/.bashrc
# to run during startup
echo "export WORKON_HOME=$HOME/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
# This just reruns the file after adding the above lines
source ~/.bashrc