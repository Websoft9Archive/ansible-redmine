# Parameters

The Redmine deployment package contains a sequence software (referred to as "components") required for Redmine to run. The important information such as the component name, installation directory path, configuration file path, port, version, etc. are listed below.

## Path

### Redmine

Redmine installation: */data/wwwroot/redmine*  
Redmine configuration file: */data/wwwroot/redmine/config/settings.yml*  
Redmine database configuration: */data/wwwroot/redmine/config/database.yml*

### Ruby

Ruby install directory: */usr/lib/ruby*  
Ruby vm directory: */usr/bin/ruby*  

### Nginx

Nginx vhost configuration file: */etc/nginx/conf.d/default.conf*  
Nginx main configuration file: */etc/nginx/nginx.conf*  
Nginx logs directory: */var/log/nginx*  
Nginx rewrite files directory: */etc/nginx/conf.d/rewrite*

### MySQL

MySQL install directory: */usr/share/mysql*  
MySQL data directory: */data/mysql*  
MySQL Configuration File: */etc/my.cnf*  
MySQL error log: */var/log/mysql/mysqld.log*  
MySQL Process Identification Number: */run/mysqld/mysqld.pid*  
MySQL Socket: */var/lib/mysql/mysql.sock*  

### phpMyAdmin

we used Docker to install phpMyAdmin  

### Docker

Docker root directory: */var/lib/docker*  
Docker image directory: */var/lib/docker/image*   

## Ports

You can control(open or shut down) ports by **[Security Group Setting](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** of your Cloud Server whether the port can be accessed from Internet.

These ports should be opened for this application:

| Name | Number | Use |  Necessity |
| --- | --- | --- | --- |
| HTTP | 80 | HTTP requests for Redmine | Required |
| HTTPS | 443 | HTTPS requests Redmine | Optional |
| phpMyAdmin | 9090 | HTTP to visit phpMyAdmin | Optional |
| MySQL | 3306 | remote to connect MySQL | Optional |

## Version

You can see the version from product page of Marketplace. However, after being deployed to your server, the components will be automatically updated, resulting in a certain change in the version number. Therefore, the exact version number should be viewed by running the command on the server:

```shell
# Linux Version
lsb_release -a

# Ruby
ruby -v

# Nginx version
nginx -v

# List Installed Nginx Modules
nginx -V

# MySQL version
mysql -V

# Docker Version
docker -v
```