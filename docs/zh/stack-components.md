# 参数

Redmine 预装包包含 Redmine 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

本部署方案中的 Redmine 采用 Docker 部署，运行 `docker ps` 查看运行的容器。

```
CONTAINER ID   IMAGE                           COMMAND                  CREATED              STATUS                PORTS                               NAMES
4ff55aec7671   redmine                         "/docker-entrypoint.…"   11 seconds ago       Up 10 seconds         0.0.0.0:9010->3000/tcp              redmine
3067c535663b   mysql:5.7                       "docker-entrypoint.s…"   About a minute ago   Up 58 seconds         33060/tcp, 0.0.0.0:3309->3306/tcp   redmine-mysql
```

### Redmine

Redmine 安装目录：*/data/wwwroot/redmine*  
Redmine 容器配置文件：*/data/wwwroot/redmine/docker-compose.yml*  
Redmine 系统配置文件：*/data/wwwroot/redmineconfig/configuration.yml*  

> configuration.yml 用于对 Redmine 进行个性配置，例如：设置 SMTP

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### MySQL

本项目中 phpMyAdmin 是采用 Docker 方式来安装  

MySQL 配置文件目录: */data/db/mysql/mysql_config/conf.d*  
MySQL 数据目录：*/data/db/mysql/mysql_data*   
  
MySQL 可视化管理地址: *http://服务器公网IP:9090*

### phpMyAdmin

本项目中 phpMyAdmin 是采用 Docker 方式来安装的 

### Docker

Docker 根目录: */var/lib/docker*  
Docker 镜像目录: */var/lib/docker/image*   
Docker daemon.json 文件：默认没有创建，请到 */etc/docker* 目录下根据需要自行创建   

## 端口号

在云服务器中，通过 **[安全组设置](https://support.websoft9.com/docs/faq/zh/tech-instance.html)** 来控制（开启或关闭）端口是否可以被外部访问。 

通过命令`netstat -tunlp` 看查看相关端口，下面列出可能要用到的端口：

| 名称 | 端口号 | 用途 |  必要性 |
| --- | --- | --- | --- |
| HTTP | 80 | 通过 HTTP 访问 Redmine | 必须 |
| HTTPS | 443 | 通过 HTTP 访问 Redmine | 可选 |
| phpMyAdmin | 9090 | 通过 HTTP 访问 phpMyAdmin | 可选 |
| MySQL | 3306 | 本地电脑远程连接服务器上的 MySQL | 可选 |

## 版本号

组件版本号可以通过云市场商品页面查看。但部署到您的服务器之后，组件会自动进行更新导致版本号有一定的变化，故精准的版本号请通过在服务器上运行命令查看：

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
