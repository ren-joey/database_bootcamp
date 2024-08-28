## About The Practices
These practices were following the course list of [FREE Data Analyst Bootcamp!!](https://www.youtube.com/playlist?list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF) created by [Alex The Analyst](https://www.youtube.com/@AlexTheAnalyst)

## Pre-requisitions
- Docker Desktop
- Docker Compose

## How To Start
1. run the following code to build a new image and run as a container
```shell
docker compose up
```

2. you can utilize the service by using any database management application, such as phpmyadmin.

3. default database setting will be as below.
```
Database system: MariaDB
Server: localhost:3306
Account: root
Password: root_password
Database: testdb
```
notice, these information depends on the value you declared in `docker-compose.yml`. If you fail to log in your database, check the settings in your `docker-compose.yml`

4. Once you finish your work, you can shut the service down by
```shell
docker compose down
```