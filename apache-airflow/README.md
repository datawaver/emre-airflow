# Apache Airflow in Docker

Work in progress to setup and run an Apache Airflow instance using Docker.
This is motivated by the fact, that the MWAA (AWS Managed Workflows for Apache Airflow) is different from the open-source Apache Airflow.


https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html

## Prerequisites

- Docker: 
    - [Orbstack](https://orbstack.dev/download) (MacOS)
    - or [Install Docker from docker.com](https://docs.docker.com/get-docker/) 
- Docker Compose: 
    - [Orbstack](https://orbstack.dev/download) (MacOS)
    - or [Install Docker Compose from docker.com](https://docs.docker.com/compose/install/)
- justfile: [Install justfile](https://github.com/casey/just#installation)

## Development

If you need to contribute to [apache/airflow](https://github.com/apache/airflow), the [Contributing workflow docs](https://github.com/apache/airflow/blob/main/contributing-docs/16_contribution_workflow.rst) will guide you. 

Here some tips for MacOS users:

- on a Mac, you can use [Orbstack](https://orbstack.dev/download) to install Docker and Docker Compose, like with `brew install orbstack`
- use breeze to make a reproducible development environment
- the devcontainer might not work as the Manifest for ARM seems not to be available
