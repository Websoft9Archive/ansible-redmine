# 服务启停

使用由Websoft9提供的Redmine部署方案，可能需要用到的服务如下：

### Redmine

```shell
sudo docker start redmine
sudo docker restart redmine
sudo docker stop redmine
```

### MySQL

```shell
sudo docker start redmine-mysql
sudo docker restart redmine-mysql
sudo docker stop redmine-mysql
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