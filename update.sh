#!/bin/bash

# Global Variables
gitcmd=`which git`
veildir=`dirname ${0}`

# Title Function
func_title(){
  # Clear Terminal (For Prettyness)
  clear
  # Print Title
  echo '========================================================================='
  echo ' Veil-Framework Update Script | [Updated]: 01.17.2015'
  echo '========================================================================='
  echo ' [Web]: https://www.veil-framework.com | [Twitter]: @VeilFramework'
  echo '========================================================================='
  echo
}

# Git Requirement Check
if [[ ${gitcmd} == '' ]]
then
  func_title
  echo '[Error]: Git is not installed or not in PATH.'
  echo '[Error]: Install git and re-run this update script.'
  echo
  exit 1
fi

# Call Title Function
func_title

# Change To Script Directory
cd ${veildir}

# Run Veil-Evasion Setup Script
cd ${veilpwd}/Veil-Evasion/
git pull
cd ${veilpwd}/Veil-Evasion/setup/ && ./setup.sh

# Run Veil-Pillage Setup Script
cd ${veilpwd}/Veil-Pillage/
git pull
cd ${veilpwd}/Veil-Pillage/ && ./update.py

# Run Veil-Catapult Setup Script
cd ${veilpwd}/Veil-Catapult/
git pull
cd ${veilpwd}/Veil-Catapult/ && ./setup.py
cd ${veilpwd}/Veil-Catapult/config/ && ./update.py

# Run Veil-PowerView Updates
cd ${veilpwd}/PowerTools/
git pull

# Run Veil-Ordnance updates
cd ${veilpwd}/Veil-Ordnance/
git pull
