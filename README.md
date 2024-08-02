# ASCII Art Dockerize

[ascii-art-dockerize](https://github.com/01-edu/public/tree/master/subjects/ascii-art-web/dockerize) from [01Talent/Zone01 Oujda curriculum](https://01talent.com/) involves creating a web server in Go, containerizing it using Docker, and adhering to best practices in both Go and Dockerfile creation. The web server serves ASCII art representations based on specified text and banner.
## Description

The ASCII Art Dockerize project involves:

- Containerizing the [ascii-art-web](https://github.com/e-aub/ascii-art-web) web server using Docker.
- Adhering to best practices in both Go and Dockerfile creation.

## Authors

- [Ayoub El Haddad](https://learn.zone01oujda.ma/git/aelhadda)

## Features

- Containerized application for easy deployment.
- Metadata applied to Docker objects for better management.
- Automated garbage collection of unused Docker objects.

## Installation

To run the `ascii-art-web` server:

1. Clone the repository:
   ```sh
   git clone https://github.com/e-aub/ascii-art-dockerize
   ```

2. Navigate to the project directory:
   ```sh
   cd ascii-art-dockerize
   ```

3. Build the Docker image:

   ```sh
   docker build -t ascii-art-dockerize .
   ```

### Usage

1. Run the Docker container:

  ```sh
   docker run -d -p 8080:8080 ascii-art-dockerize
   ```
2. Access the web server:

   Open your browser and go to `http://localhost:8080`.

3. For more details on how to use the web server, visit:
   [ascii-art-web](https://github.com/e-aub/ascii-art-web)

### Contributing
If you find any issues or have suggestions for improvements, please submit an issue or propose a change via a pull request.

For any questions or further assistance, feel free to reach out.
