#!/bin/bash

# LINUX SCRIPTS CONFIGURATION PARAMETERS
bootstrap="cloudInitialiserBootStrap.sh"
gitRepo="linux-scripts-cloud-initialiser"

#SET UP INSTALLATION DIRECTORY
pkg=CLOUD_INITIALISER
scriptType="apps"
progType="jars"
parentDir="/tmp/scripts/$scriptType"
pkgDir="$parentDir/$pkg"
installDir="$pkgDir/installs"

appServicesDir=/etc/init.d
servicesDir=$appServicesDir/services

# INSTALL $daemon AS A SERVICE
echo $setupName EXECUTING: . ./installs/addAppServices.sh
. ./installs/addAppServices.sh

# START $daemon SERVICE
echo $setupName EXECUTING: . ./installs/startAppServices.sh
. ./installs/startAppServices.sh
