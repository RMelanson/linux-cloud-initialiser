echo "EXECUTING startCloudInitialiserService.sh: service apps start java $serverPort -jar /etc/init.d/services/jobs/apps/jars/cloud-initialiser-1.3.5.RELEASE.war"
service apps start java $serverPort -jar /etc/init.d/services/jobs/apps/jars/cloud-initialiser-1.3.5.RELEASE.war
