#!/bin/bash

echo "Running religion-autobumper Ubuntu Setup..."
echo "Downloading all dependencies... This may take a while..."
apt-get update
apt-get install firefox
apt-get install wget
apt-get install unzip
echo "All dependencies downloaded. Downloading religion-autobumper..."
cd ~
mkdir autobumper
cd autobumper
wget $1
unzip religion-autobumper.zip
cd religion-autobumper
echo "Download complete. Installing Python requirements via pip..."
python3 -m pip install -r requirements.txt
echo "All done. Enjoy."
