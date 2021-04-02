# 更新升级

网站技术日新月异，**更新升级**是维护工作之一，长时间不升级的程序，就如长时间不维护的建筑物一样，会加速老化、功能逐渐缺失直至无法使用。  

这里注意更新与升级这两词的差异（[延伸阅读](https://support.websoft9.com/docs/faq/zh/tech-upgrade.html#更新-vs-升级)），例如：
- 操作系统打个补丁常称之为**更新**，Ubuntu16.04 变更为 Ubuntu18.04，称之为**升级**
- MySQL5.6.25-->MySQL5.6.30 常称之为**更新**，MySQL5.6->MySQL5.7 称之为**升级**

Redmine 完整的更新升级包括：系统级更新（操作系统和运行环境）和 Redmine 程序升级两种类型

## 系统级更新

运行一条更新命令，即可完成系统级更新：

``` shell
#For Ubuntu
apt update && apt upgrade -y

#For Centos&Redhat
yum update -y
```
> 本部署包已预配置一个用于自动更新的计划任务。如果希望去掉自动更新，请删除对应的Cron


## Redmine升级

Redmine 升级大致流程：先拉取最新版本的 Redmine 镜像，然后重新运行容器。

> Redmine 升级之前请完成服务器的快照备份，以防不测。

1. 使用 SSH 登录 Redmine 服务器后，停止容器

   ```
   cd /data/wwwroot/redmine 
   docker-compose down -v
   ```

2. 拉取最新版本镜像
   ```
   docker image pull redmine:latest
   ```

3. 重新运行 docker-compose 编排文件，启用新的容器
    ```
    docker-compose up -d
    ```

Redmine 官方提供了详细的升级方案：[RedmineUpgrade](https://www.redmine.org/projects/redmine/wiki/RedmineUpgrade)