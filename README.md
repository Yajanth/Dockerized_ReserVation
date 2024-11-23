# Dockerized Flight Reservation App

This project **Flight Reservation System** powered by a **Spring Boot** application and a **MySQL** database, all containerized using **Docker**. It is designed to set up and run a Spring Boot application with MySQL in a Dockerized environment.

## Technologies Used

- **Spring Boot** - Backend API for managing flight reservations.
- **MySQL** - Database to store reservation data.
- **Docker** - Containerization platform used to run the application and database.

## Prerequisites

Before you begin, ensure you have the following installed on your system:

- Docker: [Install Docker](https://docs.docker.com/get-docker/)
- Docker Compose (if running multiple containers): [Install Docker Compose](https://docs.docker.com/compose/install/)

## Project Structure

- **springboot-app**: The Spring Boot application that exposes REST APIs for flight reservation management.
- **MySQL Database**: Stores flight reservation data.

## Getting Started

To get the application up and running, follow these steps:

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/flight-reservation-docker.git
cd flight-reservation-docker
```

### 2. Build the Docker Containers

Ensure that Docker is running on your machine, then navigate to the project directory where your `docker-compose.yml` file is located and run the following command to build and start the containers:

```bash
docker-compose up --build
```

This command will:

- Build the Spring Boot application Docker image.
- Set up the MySQL container.
- Start the containers.

### 3. Access the Application

Once the containers are up and running, you can access the Spring Boot application at `http://localhost:8080`.

You can now interact with the APIs, for example:

- **POST /reservations** - Create a flight reservation.
- **GET /reservations** - List all reservations.

The MySQL database will be available at `localhost:3306` with the following credentials:

- **Username**: root
- **Password**: root@123
- **Database**: reservation

### 4. Stopping the Containers

To stop the running containers, use the following command:

```bash
docker-compose down
```

This will stop and remove the containers but keep the images intact.

## Configuration

The Spring Boot application uses the following environment variables for database connection:

- **SPRING_DATASOURCE_URL**: The URL of the MySQL database. Defaults to `jdbc:mysql://localhost:3306/reservation`.
- **SPRING_DATASOURCE_USERNAME**: The username for MySQL. Defaults to `root`.
- **SPRING_DATASOURCE_PASSWORD**: The password for MySQL. Defaults to `root@123`.

These environment variables are configured in the `docker-compose.yml` file, which connects the Spring Boot application to the MySQL database.

## Troubleshooting

- **Port Conflicts**: If you already have MySQL or other services running on port `3306`, change the port in the `docker-compose.yml` file to avoid conflicts.
  
- **Docker Issues**: If you're facing issues with Docker not starting or building the containers, ensure your Docker daemon is running and check if any existing containers are using the ports required by this project.

## Future Improvements

- Add user authentication and authorization for secure access to the reservation system.
- Implement more complex reservation features such as flight availability, payments, etc.
- Improve the database schema with additional tables for flights, customers, and payments.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

