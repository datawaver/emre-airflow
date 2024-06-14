# emre-airflow

emre-airflow is a project that sets up an Apache Airflow instance using Docker and utilizes 'emre-config' to configure an AWS EMR cluster. This README provides an overview of the project, installation instructions, usage guidelines, and other relevant information.

## Prerequisites

Before getting started with emre-airflow, ensure that you have the following prerequisites installed:

- Docker
- Docker Compose
- AWS CLI
- 'emre-config' (install it as described in the [emre-config project](https://github.com/datawaver/emre-config))

## Installation

To install emre-airflow, follow these steps:

1. Clone the repository:   ```   git clone https://github.com/your-username/emre-airflow.git   ```

2. Navigate to the project directory:   ```   cd emre-airflow   ```

3. Build the Docker image:   ```   docker-compose build   ```

4. Set up the necessary environment variables:   ```   export EMRE_CONFIG=/path/to/emre/config   ```

## Usage

To start using emre-airflow, follow these steps:

1. Start the Airflow containers:   ```   docker-compose up -d   ```

2. Access the Airflow web interface by navigating to `http://localhost:8080` in your web browser.

3. Trigger and monitor your DAGs through the Airflow web interface.

4. To stop the Airflow containers:   ```   docker-compose down   ```

## Contributing

This project is in the early stages of development. If you would like to contribute, please reach out to us directly to discuss potential contributions and collaboration opportunities.

## License

This project is licensed under the [MIT License](LICENSE).
