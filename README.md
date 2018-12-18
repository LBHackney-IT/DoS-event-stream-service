# Hackney & City Directory of Services: Event Stream Microservice

This microservice uses [Apache Kafka](https://kafka.apache.org/) to provide real-time data pipelines and distributed streaming.

Based on https://github.com/ConvivioTeam/Convivio-KafkaService

**HT:**
Uses Docker images from [wurstmeister](https://hub.docker.com/u/wurstmeister/).

## Install
### 1. Create a one-node docker-machine for the Kafka container

Create a Docker machine for the Kafka container:

```
$ docker-machine create --driver=virtualbox --virtualbox-memory "6000" ap-kafka
```
Get the docker machine IP.
```
$ docker-machine ip ap-kafka
```

Modify the `KAFKA_ADVERTISED_HOST_NAME` environment variable in your `.env` file to use the IP of the new Docker machine for Kafka.

Configure your shell:
```
$ eval $(docker-machine env ap-kafka)
```

Then, build the Docker instance:

```
$ make up
```

### 2. When you're finished

Stop the Docker containers:

```
$ make down
```
Optionally, remove the containers completely:
```
$ make prune
```
Stop and remove the Docker machine:
```
$ docker-machine stop ap-kafka
$ docker-machine rm ap-kafka
```