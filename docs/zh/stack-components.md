# 参数

Redmine 预装包包含 Redmine 运行所需一序列支撑软件（简称为“组件”），下面列出主要组件名称、安装路径、配置文件地址、端口、版本等重要的信息。

## 路径

### Redmine

本部署方案中的 Zabbix 采用 Docker 部署，运行 `docker ps` 查看运行的容器。

Redmine 安装目录：*/data/wwwroot/redmine*  
Redmine 配置文件：*/data/wwwroot/redmine/docker-compose.yml*  

### Nginx

Nginx 虚拟主机配置文件：*/etc/nginx/conf.d/default.conf*  
Nginx 主配置文件： */etc/nginx/nginx.conf*  
Nginx 日志文件： */var/log/nginx*  
Nginx 伪静态规则目录： */etc/nginx/conf.d/rewrite*

### MySQL

MySQL 安装目录: *usr/local/mysql*  
MySQL 配置文件: *etc/my.cnf*   
MySQL 数据目录：*/data/mysql*   
MySQL 日志文件: */var/log/mysql/mysqld.log*   
MySQL PID: */run/mysqld/mysqld.pid*   
MySQL Socket: */var/lib/mysql/mysql.sock*  
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
mysql -V

# Docker Version
docker -v
```