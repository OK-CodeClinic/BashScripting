#!bin/bash

### Installing Dependencies
echo "#####################################################################"
echo "Installing Packages"
echo "#####################################################################"
sudo apt install wget unzip apache2 -y > /dev/null
echo

### Start and Enable Services
echo "#####################################################################"
echo "Starting and Enable Apache2"
echo "#####################################################################"
sudo systemctl start apache2
sudo systemctl enable apache2
echo

### Creating Temp Dricetory
echo "#####################################################################"
echo "Starting Artifact Deployment"
echo "#####################################################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

### Downloading Artifact
echo "################################################################"
echo "Downloading website Artifact from tootmplate.com"
echo "#####################################################################"
wget https://templatemo.com/tm-zip-files-2020/templatemo_512_moonlight.zip > /dev/null
unzip templatemo_512_moonlight.zip > /dev/null
sudo cp -r templatemo_512_moonlight/* /var/www/html
echo

### Bounce Services
echo "#####################################################################"
echo "Restarting Apache2 Service"
echo "#####################################################################"
sudo systemctl restart apache2
echo

### Clean Up
echo "#####################################################################"
echo "Removing Temporary Folders"
echo "#####################################################################"
sudo rm -rf /tmp/webfiles
echo


sudo systemctl status apache2

