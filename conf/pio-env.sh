#!/usr/bin/env bash
# PredictionIO Main Configuration

# SPARK_HOME: Apache Spark is a hard dependency and must be configured.
export SPARK_HOME=${PIO_HOME}/vendors/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}
export POSTGRES_JDBC_DRIVER=${PIO_HOME}/lib/postgresql-${JDBC_PG_VERSION}.jar

# Filesystem paths where PredictionIO uses as block storage.
export PIO_FS_BASEDIR=$HOME/.pio_store
export PIO_FS_ENGINESDIR=$PIO_FS_BASEDIR/engines
export PIO_FS_TMPDIR=$PIO_FS_BASEDIR/tmp

# PredictionIO Storage Configuration
# Storage Repositories
# PostgreSQL
export PIO_STORAGE_REPOSITORIES_METADATA_NAME=pio_meta
export PIO_STORAGE_REPOSITORIES_METADATA_SOURCE=PGSQL

export PIO_STORAGE_REPOSITORIES_EVENTDATA_NAME=pio_event
export PIO_STORAGE_REPOSITORIES_EVENTDATA_SOURCE=PGSQL

export PIO_STORAGE_REPOSITORIES_MODELDATA_NAME=pio_model
export PIO_STORAGE_REPOSITORIES_MODELDATA_SOURCE=PGSQL

# Storage Data Sources

# PostgreSQL Default Settings
export PIO_STORAGE_SOURCES_PGSQL_TYPE=jdbc
export PIO_STORAGE_SOURCES_PGSQL_URL=jdbc:postgresql://${PIO_DB_HOST}/${PIO_DB}
export PIO_STORAGE_SOURCES_PGSQL_USERNAME=${PIO_DB_USER}
export PIO_STORAGE_SOURCES_PGSQL_PASSWORD=${PIO_DB_PASSWORD}

# Elasticsearch
export PIO_STORAGE_SOURCES_ELASTICSEARCH_TYPE=elasticsearch
export PIO_STORAGE_SOURCES_ELASTICSEARCH_HOSTS=${ES_HOST}
export PIO_STORAGE_SOURCES_ELASTICSEARCH_PORTS=${ES_PORT}
export PIO_STORAGE_SOURCES_ELASTICSEARCH_SCHEMES=http