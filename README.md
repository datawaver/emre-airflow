# emre-airflow

emre-airflow is a project that sets up an Apache Airflow instance using Docker and utilizes 'emre-config' to configure an AWS EMR cluster. This README provides an overview of the project, installation instructions, usage guidelines, and other relevant information.

The current version of emre-airflow is a work in progress and is not yet ready for production use. 
We are actively interating over the project and will update this README as we make progress.

## Overview

We are setting up a local Airflow and a local Spark cluster to run Spark jobs on the local cluster. 
Later we will configure the Airflow to run Spark jobs on an AWS EMR cluster with the configuration of 'emre-config'.

## Prerequisites

Before getting started with emre-airflow, ensure that you have the following prerequisites installed:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose: [Install Docker Compose](https://docs.docker.com/compose/install/)
- justfile: [Install justfile](https://github.com/casey/just#installation)

## Installation

Let's get started with the Amazon Managed Workflows for Apache Airflow (MWAA) environment locally](https://github.com/aws/aws-mwaa-local-runner) and a Spark cluster from `datawaver/spark-docker`...


```bash
just init
```

## Using

### Airflow UI

Open the Apache Airlfow UI: http://localhost:8080/.

* Username: admin
* Password: test

## Contributing

This project is in the early stages of development. If you would like to contribute, please reach out to us directly to discuss potential contributions and collaboration opportunities.

## License

This project is licensed under the [MIT License](LICENSE).

## Further Links

* [Amazon Managed Workflows for Apache Airflow (MWAA) environment locally](https://github.com/aws/aws-mwaa-local-runner)
* [emre spark](https://github.com/datawaver/emre-spark.git)
