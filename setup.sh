#!/bin/bash
set -x
git clone https://github.com/504ensicsLabs/LiME.git
mv LiME/ lime/
cd lime/src
patch < ../../lime-Makefile.patch
cd ../../
tar zxf static-dwarfdump.tgz
git clone https://github.com/volatilityfoundation/volatility.git
cd volatility
sudo python setup.py install
sudo apt-get install yara
sudo apt-get install python-pip
sudo -H pip install --upgrade pip
sudo -H pip install distorm3 pycrypto openpyxl Pillow
