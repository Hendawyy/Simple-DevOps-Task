# CloudDockerize 🌐🐳

CloudDockerize is a project that demonstrates the deployment of a web application using Docker containers on the cloud, specifically AWS EC2 instances. It includes tasks related to Linux server setup, Git and GitHub usage, Docker containerization, and networking basics.

## Table of Contents

- [CloudDockerize 🌐🐳](#clouddockerize-)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Tasks](#tasks)
    - [Linux Server Simulation](#linux-server-simulation)
    - [Git and GitHub](#git-and-github)
    - [Containerize your Repo](#containerize-your-repo)
    - [Networking Basics](#networking-basics)
  - [Deployment on AWS EC2](#deployment-on-aws-ec2)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)
  - [Questions or Need Help?](#questions-or-need-help)

## Overview

CloudDockerize is designed to help you enhance your skills in DevOps by providing a hands-on experience with common tasks such as setting up a Linux server, managing Git repositories, containerizing applications with Docker, and understanding networking basics.

## Tasks

### Linux Server Simulation

1. **Install Apache, MySQL, and PHP:**
   - Use package manager to install necessary software.

```bash
# Update package repository
sudo apt update && sudo apt upgrade -y

# Install Apache, Docker, Docker Compose
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql docker.io php
```

   - Enable Services and check status.

```bash
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl start mysql
sudo systemctl enable mysql
sudo systemctl status apache2
sudo systemctl status mysql
```

2. **Create a Simple Website:**
   - Display "Hello World!" message.

```bash
sudo sh -c 'echo "<center><h1>Hello World!<br>This is Seif Hendawy, DevOps Engineer 👋</h1></center>"' > /var/wwww/html/index.html'
```

   - and access it on the localhost
  
3. **Configure MySQL:**
   - Create a new database, user, and password.

```bash
sudo mysql -u root -p
CREATE DATABASE trial;
CREATE USER usr@localhost IDENTIFIED BY 'pass';
GRANT ALL PRIVILEGES ON trial.* TO usr@localhost;
exit
```

4. **Modify Website to Use Database:**
   - Create `index.php` file to  display data from the database in `/var/wwww/html/index.html`.

> [!NOTE]
> You will find the full `index.php` file in the root directory of the project.

5. **Test Website:**
   - Ensure website displays expected message.

### Git and GitHub

1. **Initialize Git Repository:**
   - in you local Project directory execute the following command.

```bash
git init
```

2. **Create .gitignore File:**
   - Exclude sensitive files from version control.

3. **Push to GitHub:**
   - Share project with others on GitHub.

### Containerize your Repo

1. **Creating Dockerfiles:**
   - Create 2 Dockerfiles 1 for web and 1 for Database.

2. **Create a Docker Compose file for linking the 2 images:**

```bash
docker-compose up -d
```

> [!NOTE]
> I Used 2 secret files containing the root and user passwords.

1. **Check the Containers status:**

```bash
 docker ps
```

### Networking Basics

- **IP Address and Routing Protocols:**
  - In Task #1, the IP address used would be the localhost (127.0.0.1).
  - Routing protocols such as TCP/IP would be used for communication between the server and the client.
  - ::1 is the true "local host" or "loopback" address, equivalent to 127.0. 0.1.
- **Connecting to Cloud Instance:**
  - From what I understand in this task I will have to Deploy the web app on a remote Cloud instance.

## Deployment on AWS EC2

To deploy CloudDockerize on AWS EC2:

1. Create an EC2 instance on AWS.
2. SSH into the instance.

```bash
ssh -i "key-name" "user"@"instance-public-ip"
ssh -i "ATW.pem" ubuntu@54.174.143.162
```

3. Create a script file to install all the needed configurations and libraries.
4. Transfer Docker Compose files and other needed files to the remote instance.

```bash
scp -i "key-name" file2 file2 filen "user"@"instance-public-ip":"desired-dir-on-remote-instance"

scp -i "ATW.pem" docker-compose.yml Dockerfile Dockerfile.mysql mysql_root_password.txt mysql_user_password.txt index.php installub.sh  ubuntu@54.174.143.162:~
```

5. Add executable permission to the script file and run it.

```bash
 chmod +x installub.sh
 ./installub.sh
```

> [!NOTE]
> You will find the full `installub.sh` file in the Scripts folder in the root directory of the project.

6. Run Docker Compose to launch the application.

```bash
docker-compose up -d
```

7. Check app.

```bash
curl localhost:8081
```

## Usage

1. Clone the repository:

```bash
https://github.com/Hendawyy/Simple-DevOps-Task.git
```

2. Follow the instructions in each task to complete the setup.

## Contributing

Contributions are welcome! Feel free to open issues or submit pull requests to improve CloudDockerize.

## License

This project is licensed under the [MIT License](LICENSE).

## Questions or Need Help?

If you have any questions, suggestions, or need assistance, please don't hesitate to Contact Me [Seif Hendawy](mailto:seifhendawy1@gmail.com). 😉
