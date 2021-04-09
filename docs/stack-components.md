# Parameters

The Redmine deployment package contains a sequence software (referred to as "components") required for Redmine to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

This solution use Docker to deploy all service, you can run the command `docker ps` to list them  

```
CONTAINER ID   IMAGE                           COMMAND                  CREATED              STATUS                PORTS                               NAMES
4ff55aec7671   redmine                         "/docker-entrypoint.…"   11 seconds ago       Up 10 seconds         0.0.0.0:9010->3000/tcp              redmine
3067c535663b   mysql:5.7                       "docker-entrypoint.s…"   About a minute ago   Up 58 seconds         33060/tcp, 0.0.0.0:3309->3306/tcp   redmine-mysql
```

### Redmine

Redmine installation: */data/wwwroot/redmine*  
Redmine Docker configuration file: */data/wwwroot/redmine/docker-compose.yml*  
Redmine configuration: */data/wwwroot/redmine/config/configuration.yml*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs directory: */var/log/nginx*  
Nginx rewrite files directory: */etc/nginx/conf.d/rewrite*

### MySQL

MySQL data directory: */data/db/mysql*  
MySQL Web Management refer to [MySQL Management](/admin-mysql.md)

### phpMyAdmin

we used Docker to install phpMyAdmin  

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

You can run the cmd `netstat -tunlp` to list all used ports, and we list the following most useful ports:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for Redmine | Required |
| HTTPS | 443 | HTTPS requests Redmine | Optional |
| phpMyAdmin | 9090 | HTTP to visit phpMyAdmin | Optional |
| MySQL | 3306 | remote to connect MySQL | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Check all components version
sudo cat /data/logs/install_version.txt

# Linux Version
lsb_release -a

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version
docker inspect redmine-mysql | grep "MYSQL_VERSION"

# Redmine Version
docker inspect redmine:latest |grep REDMINE_VERSION |head -1 |cut -d= -f2

# Docker Version
docker -v
```