#!/bin/sh

docker run --net="host" \
           -d \
           -p 5050:5050 \
           -e "MESOS_HOSTNAME=$HOST_IP" \
           -e "MESOS_IP=$HOST_IP" \
           -e "MESOS_ZK=zk://$HOST_IP:2181/mesos" \
           -e "MESOS_PORT=5050" \
           -e "MESOS_LOG_DIR=/var/log/mesos" \
           -e "MESOS_QUORUM=1" \
           -e "MESOS_WORK_DIR=/var/lib/mesos" \
           mesosphere/mesos-master:0.23.0-1.0.ubuntu1404
