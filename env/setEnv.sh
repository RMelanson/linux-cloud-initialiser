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

ciDir=/opt/CI
appServicesDir=$CIDir/services
servicesDir=$appServicesDir/services
jobsDir=$servicesDir/jobs/$scriptType/$progType
serverPort="-Dserver.port=9090"

pkgOwner=ec2-user

echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
