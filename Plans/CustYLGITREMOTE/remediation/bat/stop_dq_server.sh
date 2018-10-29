#!/bin/sh

DQC_HOME=../../../runtime
CLASSPATH=$DQC_HOME/lib/cif-bootstrap.jar

java -cp $CLASSPATH com.ataccama.dqc.bootstrap.DqcBootstrap $DQC_HOME com.ataccama.dqc.server.bin.OnlineCtl -config=../services/_remediation_services.serverConfig stop


