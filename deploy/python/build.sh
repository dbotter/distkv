#!/usr/bin/env bash

set -x
# Cause the script to exit if a single command fails.
set -e

# install
pushd ../../
mvn clean install -DskipTests

# copy distkv-server jar to wheel dist.
cp server/target/distkv-server-0.1.3-SNAPSHOT-jar-with-dependencies.jar deploy/python/distkv/jars/distkv-server.jar
# copy distkv-cli jar to wheel dist.
cp client/target/distkv-client-0.1.3-SNAPSHOT-jar-with-dependencies.jar deploy/python/distkv/jars/distkv-cli.jar

popd
