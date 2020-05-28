#!/bin/sh

# The script is used to install all dependencies on a Ubuntu 20 LTS plain  VM used for development
# to start the script use sudio ./install.sh

sudo apt -y update

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt -y update
sudo apt -y install yarn

sudo apt-get -y install openjdk-8-jdk
sudo apt -y install maven


sudo apt -y install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt -y update
sudo apt -y install mono-devel


wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get -y update
sudo apt-get -y install apt-transport-https
sudo apt-get -y update
sudo apt-get -y install dotnet-sdk-3.1

sudo apt -y install python3 python3-pip
sudo apt -y install python-is-python3


sudo python -m pip install --upgrade pip setuptools wheel testresources twine

