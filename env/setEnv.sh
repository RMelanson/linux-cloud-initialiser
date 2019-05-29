#!/bin/bash

# LINUX SCRIPTS CONFIGURATION PARAMETERS
bootstrap="cloudInitialiserBootStrap.sh"
gitRepo="linux-scripts-cloud-initialiser"

#SET UP INSTALLATION DIRECTORY
pkg=CLOUD_INITIALISER
daemon=$pkg
scriptType="apps"
progType="jars"
parentDir="/tmp/scripts/$scriptType"
pkgDir="$parentDir/$pkg"
installDir="$pkgDir/installs"

appServicesDir=/etc/init.d
servicesDir=$appServicesDir/services
