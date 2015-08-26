#!/bin/sh
set -e

export HOST_IP='172.17.42.1'

./zookeeper.sh
./mesos-master.sh
./mesos-slave.sh
./marathon.sh
