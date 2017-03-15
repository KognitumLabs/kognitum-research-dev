#!/usr/bin/env bash
echo '----------------------------------------------'
echo ' INSTALLING PYTHON VIRTUALENVWRAPPER'
echo '----------------------------------------------'

sudo apt-get install -y python2.7-dev python-pip ipython
sudo apt-get install -y libffi-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y libxml2-dev libxslt1-dev
sudo apt-get install -y libpng12-dev libfreetype6-dev
sudo apt-get install -y python-tk

pip install virtualenvwrapper

cat <<EOL >>/home/vagrant/.bashrc

export WORKON_HOME=/home/vagrant/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

EOL
