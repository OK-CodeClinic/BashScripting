#!/bin/bash

#Variable Declaration
PACKAGE="apache2 wget unzip"
SVC="apache2"
URL="https://templatemo.com/tm-zip-files-2020/templatemo_512_moonlight.zip"
ART_NAME="templatemo_512_moonlight"
TEMPDIR="/tmp/webfiles"

### Installing Dependencies
echo "#####################################################################"
echo "Installing Packages"
echo "#####################################################################"
sudo apt install $PACKAGE -y > /dev/null
echo

### Start and Enable Services
echo "#####################################################################"
echo "Starting and Enable Apache2"
echo "#####################################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

### Creating Temp Dricetory
echo "#####################################################################"
echo "Starting Artifact Deployment"
echo "#####################################################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

### Downloading Artifact
echo "################################################################"
echo "Downloading website Artifact from tootmplate.com"
echo "#####################################################################"
wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html
echo

### Bounce Services
echo "#####################################################################"
echo "Restarting Apache2 Service"
echo "#####################################################################"
sudo systemctl restart $SVC
echo

### Clean Up
echo "#####################################################################"
echo "Removing Temporary Folders"
echo "#####################################################################"
sudo rm -rf $TEMPDIR
echo


sudo systemctl status $SVC

