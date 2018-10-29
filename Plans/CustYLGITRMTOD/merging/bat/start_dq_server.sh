#!/bin/sh

DQC_HOME=../../../runtime
CLASSPATH=$DQC_HOME/lib/cif-bootstrap.jar

java -Duser.timezone=UTC -Xmx1000m -cp $CLASSPATH com.ataccama.dqc.bootstrap.DqcBootstrap $DQC_HOME com.ataccama.dqc.server.bin.OnlineCtl -config=../services/_merge_services.serverConfig start
