#!/bin/bash

#download python file and run it
wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fslinstaller.py
python2 fslinstaller.py

#get root for environment configuration
sudo chmod  -R 777 /etc/profile
sudo chmod -R 777 /etc/bash.bashrc


#environment configuration
sudo echo 'export  PATH=$PATH：/usr/local/fsl/bin'>>/etc/profile
sudo echo 'export FSLDIR=/usr/local/fsl'>>/etc/profile
sudo echo 'FSLDIR=/usr/local/fsl'>>/etc/bash.bashrc
sudo echo '. ${FSLDIR}/etc/fslconf/fsl.sh'>>/etc/bash.bashrc
sudo echo 'PATH=${FSLDIR}/bin:${PATH}'>>/etc/bash.bashrc
sudo echo 'export FSLDIR PATH'>>/etc/bash.bashrc


