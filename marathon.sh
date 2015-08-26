docker run \
       -d \
       -p 8080:8080 \
       mesosphere/marathon --master zk://$HOST_IP:2181/mesos --zk zk://$HOST_IP:2181/marathon
