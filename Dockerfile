ARG CP_KAFKA_CONNECT_BASE_VERSION=6.0.1

FROM confluentinc/cp-kafka-connect-base:$CP_KAFKA_CONNECT_BASE_VERSION

ENV COMPONENT=kafka-connect

ARG CONFLUENTINC_JDBC_CONNECTOR_VERSION=10.0.1
ARG CONFLUENTINC_HDFS_CONNECTOR_VERSION=10.0.0
ARG CONFLUENTINC_ELASTICSEARCH_CONNECTOR_VERSION=11.0.0
ARG CONFLUENTINC_S3_CONNECTOR_VERSION=5.5.3
ARG CONFLUENTINC_AVRO_CONVERTER_CONNECTOR_VERSION=5.5.3

RUN confluent-hub install --no-prompt confluentinc/kafka-connect-jdbc:$CONFLUENTINC_JDBC_CONNECTOR_VERSION \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-hdfs:$CONFLUENTINC_HDFS_CONNECTOR_VERSION \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-elasticsearch:$CONFLUENTINC_ELASTICSEARCH_CONNECTOR_VERSION \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-s3:$CONFLUENTINC_S3_CONNECTOR_VERSION \
    && confluent-hub install --no-prompt confluentinc/kafka-connect-avro-converter:$CONFLUENTINC_AVRO_CONVERTER_CONNECTOR_VERSION