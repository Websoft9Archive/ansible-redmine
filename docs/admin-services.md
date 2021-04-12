# Start or Stop the Services

These service's commands you must know when you using the Redmine of Websoft9


### Redmine

```shell
sudo docker start redmine
sudo docker restart redmine
sudo docker stop redmine
sudo docker stats redmine
```

### MySQL

```shell
sudo docker start redmine-mysql
sudo docker restart redmine-mysql
sudo docker stop redmine-mysql
sudo docker stats redmine-mysql
```

### phpMyAdmin

```shell
sudo docker start phpmyadmin
sudo docker restart phpmyadmin
sudo docker stop phpmyadmin
sudo docker stats phpmyadmin
```

### Nginx

```shell
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl status nginx
```

### Docker

```shell
sudo systemctl start docker
sudo systemctl restart docker
sudo systemctl stop docker
sudo systemctl status docker
```

### Docker-compose service

```
# Create Docker container
sudo docker-compose up

# Create Docker container at backend
sudo docker-compose up -d

# Start/Stop/Restart container
sudo docker-compose start
sudo docker-compose stop
sudo docker-compose restart
```