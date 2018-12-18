# Hackney & City Directory of Services: Event Stream Microservice

This microservice uses [Apache Kafka](https://kafka.apache.org/) to provide real-time data pipelines and distributed streaming.

Based on https://github.com/ConvivioTeam/Convivio-KafkaService

Runs in Docker.

**HT:**
Uses Docker images from [wurstmeister](https://hub.docker.com/u/wurstmeister/).

## Installation

Installation assumes you have Docker running.

Copy `.env.example` to `.env` for and adapt as required, e.g. for local development, or set system environment variables. 

```bash
$ make up
```

Containers:

- **zookeeper** image from [wurstmeister/zookeeper](https://hub.docker.com/r/wurstmeister/zookeeper/)
- **kafka** image from [wurstmeister/kafka](https://hub.docker.com/r/wurstmeister/kafka/)
- **traefik**