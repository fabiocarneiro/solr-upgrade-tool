#!/bin/bash

: ${JAVA_HOME:?"Please configure JAVA_HOME environment variable"}

JVM="java"
SCRIPT_DIR=$(dirname "$0")

PATH="${JAVA_HOME}/bin:${PATH}" ${JVM} $JAVA_OPTS -jar "${SCRIPT_DIR}/../target/solr-upgrade-tool-0.0.1-SNAPSHOT.jar"  "$@"

