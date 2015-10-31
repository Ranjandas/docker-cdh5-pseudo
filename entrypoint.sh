#!/bin/bash

echo "Formatting Namenode"
su -s /bin/bash hdfs -c 'hdfs namenode -format'

# Start hdfs services
for x in `cd /etc/init.d ; ls hadoop-hdfs-*` ; do service $x start ; done

# Initiate hdfs with required directories
/usr/local/libexec/init-hdfs.sh

# Start MR services
for x in `cd /etc/init.d ; ls hadoop-0.20-mapreduce-*` ; do service $x start ; done

# Start Hive-Server
service hive-server start

tail -F /var/log/hadoop-*/*.out
