# Introduction

This repo contains files necessary to build Pseudo Distributed Cluster based on Cloudera Distribution of Hadoop (CDH) version 5.3.3.

The Docker image will contain the following components from the CDH family.

* HDFS
* Mapreduce
* Hive Server

## Instructions

To build the Docker image first clone this repository and do a docker build against the Docker Server.

```
git clone https://github.com/Ranjandas/docker-cdh5-pseudo

cd docker-cdh5-pseudo

docker build -t cdh5-pseudo .
```
The above commands will build the Docker image. Now you can simply run the container to start pseudo distributed cluster.

```
docker run -d --name cdh5-pseudo -P cdh5-pseudo
```

If you want to access the cluster from your host, you will have to properly exposed the necessary ports using `-p <hostport>:<guestport>` arguments when starting the container.

You can watch below on how to run the container.

[![asciicast](https://asciinema.org/a/d9nw6alkw44f4b8sb7lcnp1yq.png)](https://asciinema.org/a/d9nw6alkw44f4b8sb7lcnp1yq)
