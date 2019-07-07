#!/bin/bash

# LINUX SCRIPTS CONFIGURATION PARAMETERS
bootstrap="cloudInitialiserBootStrap.sh"
gitRepo="linux-scripts-cloud-initialiser"

#SET UP INSTALLATION DIRECTORY
daemon=cloudInit
pkg=CLOUD_INITIALISER
scriptType="apps"
progType="jars"
parentDir="/tmp/scripts/$scriptType"
pkgDir="$parentDir/$pkg"
installDir="$pkgDir/installs"
modulesDir="$installDir/subModules"

#appServicesDir=/etc/init.d
CIDir=/opt/CI
appServicesDir=$CIDir/services
servicesDir=$appServicesDir/services
jobsDir=$servicesDir/jobs/$scriptType/$progType
serverPort="-Dserver.port=9090"
