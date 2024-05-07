#!/bin/sh

# Java runtime environment path
#JAVA_HOME=~/jdk-8u371-linux-x64/jdk1.8.0_371

# JAR path
CHECKER_JAR_PATH=bin/MigrationLicenseChecker.jar

cmd="$JAVA_HOME/bin/java -jar $CHECKER_JAR_PATH"

$cmd $@
