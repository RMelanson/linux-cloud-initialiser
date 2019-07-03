#!/bin/bash
bootstrapDir=$PWD

# Ensure script is running under 
if [ "$EUID" -ne 0 ]
then
   sudo -n true 2/dev/null 2>&1
   passwordRequired=$?

   if [ "$passwordRequired" == "1" ]; then
       echo "Please run as root or under user with sudo access sudo"
   else
       sudo chmod +x $bootstrap
       sudo $bootstrap
   fi
   return 1
fi

# SETUP ENVIRONMENT AND PARAMETERS
pkg=CLOUD_INITIALISER
gitRepo="linux-scripts-cloud-initialiser.git"
installDir="/tmp/scripts/apps/$pkg"

get="git clone --recurse-submodules -j8"

if [ -f ~/.ssh/gitHub.key ]; then
   prototype="git@github.com:RMelanson/"
else
   prototype="https://github.com/RMelanson/"
fi

# Clone $pkg
clone="$git $prototype$gitRepo $installDir"
$clone

# Setup $pkg
cd $installDir
echo Executed $clone | tee setup.log

# MAKE ALL SHELL SCRIPTS EXECUTABLE TO ROOT ONLY
find . -name "*.sh" -exec chmod 700 {} \;

# Setup Project
echo "BOOTSTRAP EXECUTING: ./setup.sh $* 2>&1| tee setup.log"
./setup.sh $* 2>&1| tee -a setup.log

cd $bootstrapDir
