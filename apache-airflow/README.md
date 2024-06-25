# Apache Airflow in Docker

Work in progress to setup and run an Apache Airflow instance using Docker.
This is motivated by the fact, that the MWAA (AWS Managed Workflows for Apache Airflow) is different from the open-source [Apache Airflow](https://github.com/apache/airflow).

## Features:

* Out of the box, fast setup according to the [Apache Airflow Docker Compose](https://airflow.apache.org/docs/apache-airflow/stable/howto/docker-compose/index.html) documentation
* configured with your own [dags](dags).

## Prerequisites

- [just](https://github.com/casey/just#installation)
- Docker & Docker Compose: 
    - For MacOS you can use: [Orbstack](https://orbstack.dev/download) e.g. `brew install orbstack`
    - For Windows: [Install Docker from docker.com](https://docs.docker.com/get-docker/)
    - For Linux I think you know how to install Docker and Docker Compose ;) 

## Usage

Check out the justfile for the available commands with 'just'.


## Development

If you need to contribute to [apache/airflow](https://github.com/apache/airflow), the [Contributing workflow docs](https://github.com/apache/airflow/blob/main/contributing-docs/16_contribution_workflow.rst) will guide you.

To clone the repository and start the development environment, try: `just dev`.

Here some tips for MacOS users:

- on a Mac, you can use [Orbstack](https://orbstack.dev/download) to install Docker and Docker Compose, like with `brew install orbstack`
- use breeze to make a reproducible development environment
- the devcontainer might not work as the Manifest for ARM seems not to be available
