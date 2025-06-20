# API_PROJECT being DOCKERIZED

## DOCKERIZING AN APP

Brief Description of the API Project and Docker Usage
This project is a Node.js API 🚀 designed to showcase the power of containerization 🐳 using Docker. By Dockerizing this app, we ensure that it runs consistently across different environments 🌍, eliminating the "it works on my machine" problem. Docker helps streamline deployment, improve scalability, and simplify dependency management 📦.

## picture

![docker-ec2](https://github.com/user-attachments/assets/d66f4523-dc43-41ac-9d3d-671b8d0c3b09)

## 🐳 Setting Up Docker on AWS EC2 (Ubuntu 24.04)

Below are the steps I followed to install and verify Docker on a fresh EC2 instance running Ubuntu 24.04. Connect using the EC2 InstanceConnect browser-based client, with a public IPv4 or IPv6 address.

✅ 1. Update your package index
`sudo apt update`

📦 2. Install Dockergvx
`sudo apt install docker.io`

🔍 3. Confirm Docker version
`docker --version`

👥 4. Add current user (ubuntu) to the Docker group
This allows running docker commands without sudo.
`sudo usermod -aG docker $USER`
`sudo usermod -aG docker ubuntu` - this is what I used

🔄 5. Refresh the group (start a new shell session)
`newgrp`

🔁 6. Confirm Docker works without sudo
`docker -v`

🧪 7. Test Docker installation with the hello-world image
`sudo docker run hello-world`

## Explanation of the Dockerfile

The Dockerfile is a set of instructions used to build a Docker image for the API project. Here's a breakdown of each line:

    ** # Use Node.js 18 Alpine as base image
        FROM node:18-alpine **

- FROM: Specifies the base image. Here, we use a lightweight Node.js 18 Alpine image for efficiency.
  WORKDIR: Sets the working directory inside the container to /app.

      ** # Set working directory
      WORKDIR /app **

- WORKDIR: Sets the working directory inside the container to /app.
  ** # Copy package files
  COPY package\*.json ./ **

- COPY: Copies the package.json and package-lock.json files from the local directory to the container's /app directory.

  ** # Install dependencies
  RUN npm install **

- RUN: Installs the project dependencies using npm install.

  ** # Copy application files
  COPY . . **

- COPY: Copies all files from the local directory to the container's /app directory.

  ** # Expose port 3000
  EXPOSE 3000 **

- EXPOSE: Exposes port 3000 for the API to listen on.
  ** # Start the application
  CMD ["npm", "run", "dev"] **

- CMD: Specifies the command to run when the container starts. In this case, it runs npm run dev to start the API in development mode.

---

## Explanation of the .dockerignore

The .dockerignore file is used to exclude files and directories from being copied into the Docker image. This helps reduce the image size and improve build performance. Common entries include:

    ** node_modules
    .git
    Dockerfile
    .dockerignore **

node_modules: Excludes local dependencies since they will be installed inside the container.
.git: Prevents Git metadata from being included.
Dockerfile and .dockerignore: Excludes the Docker configuration files themselves.

![docker_dockerfile_ec2](https://github.com/user-attachments/assets/ba4e91b1-e9e9-4924-be44-c64e4b6bc081)

## About

- 👋 Hi, I’m Chidike Henry
- 😎 I’m a fullstack developer
- 💻 This is a project that shows how to dockerize an API.
- 💞️ I’m looking to collaborate on AWS, Docker and DevOps projects
- 📫 How to reach me chidike.henry@gmail.com

## Technologies Used

- Javascript
- Express
- NodeJS
- Git
- AWS
- Github
- Docker

## Author

#### 👤 Author1

- GitHub: [@lacegiovanni17]https://github.com/lacegiovanni17
- Twitter: [@ChidikeC] https://twitter.com/ChidikeC
- LinkedIn: [LinkedIn]https://www.linkedin.com/in/chidike-chizoba-25628a40/

## Contributing

Contributions, issues, critics and feature requests are welcome!

## Show your support

Please give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to me
- Inspiration to all devs
- etc
