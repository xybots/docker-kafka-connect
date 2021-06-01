# Kafka Connect Docker Image

Docker file for building docker image for [Kafka Connect](https://kafka.apache.org/documentation/#connect) bundled with a couple of free connectors from [Confluent Hub](https://www.confluent.io/hub/).

The following connectors from [Confluent Hub](https://www.confluent.io/hub/) are bundled into the docker image:

- JDBC Connect (Source and Sink)
- Kafka Connect HDFS
- Kafka Connect Elasticsearch
- Amazon S3 Sink Connector
- Kafka Connect Avro Converter
