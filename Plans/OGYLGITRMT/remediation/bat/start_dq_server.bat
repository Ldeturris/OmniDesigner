@echo off

rem Start script for DQC - online server mode

rem modify JAVA_OPTS to meet your needs (such as heap size settings, variables definitions, etc.)
rem set JAVA_OPTS=

set DQ_HOME=%~dp0..\..\..\runtime
echo %DQ_HOME%

rem ============================================================================
rem Prepare classpath

:prepare_classpath
set CLASSPATH=
set CLASSPATH="%DQ_HOME%\lib\cif-bootstrap.jar"
echo Using CLASSPATH=%CLASSPATH%

java -Duser.timezone=UTC -Xmx1000m -cp %CLASSPATH% com.ataccama.dqc.bootstrap.DqcBootstrap "%DQ_HOME%" com.ataccama.dqc.server.bin.OnlineCtl -config=../services/_remediation_services.serverConfig start
