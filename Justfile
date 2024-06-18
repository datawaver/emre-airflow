#!/usr/bin/env just

# Default recipe
@default:
  just --list

@init:
    just _aws-mwaa-local-runner
    just _spark-docker
    echo
    echo "🎉 AWS MWAA Local Runner and Spark Docker are ready to use."
    echo "👉 Run 'just run' to access the Airflow instance."

@clean:
    echo "🧹 Cleaning up ..."
    rm -rf aws-mwaa-local-runner
    rm -rf spark-docker
    echo "Done."

# Access the Airflow instance
run:
    echo "👉 UI Access Airflow: http://localhost:8080"
    docker-compose -p emre-airflow -f aws-mwaa-local-runner/docker/docker-compose-local.yml exec local-runner bash

_aws-mwaa-local-runner:
    #!/bin/bash
    set -euxo pipefail
    echo "🚀 Setting up AWS MWAA Local Runner ..."
    git clone https://github.com/aws/aws-mwaa-local-runner.git
    cd aws-mwaa-local-runner
    cp -p dags/* ../dags
    rm -rf ./dags 
    ln -s ../dags ./
    ./mwaa-local-env build-image
    echo "🎬 Starting Airflow ..."
    docker-compose -p emre-airflow -f ./docker/docker-compose-local.yml up -d
    echo "👉 Access Airflow: http://localhost:8080"

_spark-docker:
    #!/bin/bash
    set -euxo pipefail
    echo "🚀 Setting up Spark Docker ..."
    git clone https://github.com/datawaver/spark-docker.git
    cd spark-docker
    echo "🎬 Starting Spark ..."
    export MASTER_SPARK_UI_PORT=8888 && just start master

# ----------------------------------------
# Additional recipes for debugging and testing
# ----------------------------------------

# Display important information about the Docker Compose setup
@info:
    echo " ============================================== "
    echo " 👀 Displaying AWS MWAA Local Runner ..."
    echo " ============================================== "
    docker-compose -p emre-airflow -f aws-mwaa-local-runner/docker/docker-compose-local.yml config --services 
    docker-compose -p emre-airflow -f aws-mwaa-local-runner/docker/docker-compose-local.yml ps
    docker-compose -p emre-airflow -f aws-mwaa-local-runner/docker/docker-compose-local.yml logs --tail 20
    echo " ============================================== "
    echo " 👀 Displaying Spark Docker ..."
    echo " ============================================== "
    just spark-docker/info

