#! /bin/bash
# SETUP THE REQUIRED ENVIRONMENTT
echo $setupName: EXECUTING ./env/setEnv.sh
. ./env/setEnv.sh

# COPY CLOUD INTEGRATION APPLICATION TO SERVICE APPLICATION DIRECTORY
echo addAppServices.sh EXECUTING: cp -rf $installDir/services $appServicesDir
cp -rf $installDir/services $appServicesDir
