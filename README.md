## Project Overview
This project encompasses setting up Docker images, configuring a web server, and ensuring secure deployment using Docker and Docker Compose.

Summary of Tasks

1. Ready-Made Docker
Utilize a pre-built Nginx Docker image.
Employ basic Docker commands.

2. Container Operations
Modify the Nginx configuration within a Docker container.
Implement an Nginx status page and manage the container's lifecycle.
Export, remove, and import the container while ensuring the status page remains accessible.

3. Mini Web Server
Develop a simple C-based web server using FastCGI.
Configure Nginx to proxy requests to this server.

4. Custom Docker
Create a Docker image for a custom web server.
Configure Nginx to ensure proper proxy and status page functionality.

5. Dockle
Scan the custom Docker image for security vulnerabilities using Dockle.
Remediate any detected errors or warnings.

6. Basic Docker Compose
Create a sample docker-compose.yml file for deploying multiple Docker containers.
Configure one container to run the custom web server and another to proxy requests using Nginx.
Build and run the project using Docker Compose.
