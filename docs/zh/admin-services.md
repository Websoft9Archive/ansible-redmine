# 服务启停

使用由Websoft9提供的Redmine部署方案，可能需要用到的服务如下：

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

### Docker-compose 服务

```
#创建容器编排
sudo docker-compose up

#创建容器编排并重建有变化的容器
sudo docker-compose up -d

#启动/重启
sudo docker-compose start
sudo docker-compose stop
sudo docker-compose restart
```