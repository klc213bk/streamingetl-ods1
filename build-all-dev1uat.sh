#!/bin/bash

LOGMINER_HOME=/home/oracle/gitrepository/kafka-connect-oracle
STREAMINGETL_HOME=/home/oracle/gitrepository/transglobe/streamingetl
COMMON_HOME=/home/oracle/gitrepository/transglobe/streamingetl-common
APP_HOME=/home/oracle/gitrepository/transglobe/streamingetl-ods1
echo "start to build logminer"
cd ${LOGMINER_HOME}
mvn clean package
cp ${LOGMINER_HOME}/target/*.jar ${STREAMINGETL_HOME}/connectors/oracle-logminer-connector/

echo "start to build common"
cd ${COMMON_HOME}
mvn clean package
cp ${COMMON_HOME}/target/*.jar "${APP_HOME}/lib"

echo "start to build app"
cd ${APP_HOME}
mvn clean package
#cp ${APP_HOME}/pcr420669-consumer/target/*.jar "${APP_HOME}/lib"
#cp ${APP_HOME}/pcr420669-load/target/*.jar "${APP_HOME}/lib"
#cp ${APP_HOME}/pcr420669-test/target/*.jar "${APP_HOME}/lib"

