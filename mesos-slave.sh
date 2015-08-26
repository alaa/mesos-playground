docker rm -f mesos_slave_1

docker run -d \
           --name mesos_slave_1 \
           -e "MESOS_MASTER=zk://$HOST_IP:2181/mesos" \
           -e "MESOS_LOG_DIR=/var/log/mesos" \
           -e "MESOS_LOGGING_LEVEL=INFO" \
           -e "MESOS_CONTAINERIZERS=docker,mesos" \
           -v /var/run/docker.sock:/var/run/docker.sock \
           --entrypoint="mesos-slave" \
           dev-mesos-slave:latest
