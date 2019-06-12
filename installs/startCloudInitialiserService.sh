echo "EXECUTING startCloudInitialiserService.sh: service apps start java $serverPort -jar /opt/CI/services/jobs/apps/jars/cloud-initialiser-1.3.5.RELEASE.war"
service apps start java $serverPort -jar /opt/CI/services/jobs/apps/jars/cloud-initialiser-1.3.5.RELEASE.war
