# 账号密码

使用Redmine，可能会用到的几组账号密码如下：

## Redmine

* Redmine 用户名：`admin`  
* Redmine 密  码：`存储在您的服务器指定文件中` 或 `admin`   

     - **密码存储路径**：*/credentials/password.txt*    
     - **获取方式**： 建议通过云控制台的命令终端，运行下图**红框**所示命令，获取 Redmine 密码   
        ![运行cat命令](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-getpassword-websoft9.png)

## MySQL

* 管理员账号：*`root`*
* 管理员密码：存储在您的服务器指定文件中

     - **密码存储路径**：*/credentials/password.txt*    
     - **获取方式**： 建议通过云控制台的命令终端，运行下图**红框**所示命令，获取数据库密码   
       ![运行cat命令](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/catdbpassword-websoft9.png)

## Linux

* 主机地址：服务公网IP地址
* 连接方式：云控制台在线SSH 或 SFTP客户端工具 或 SSH客户端工具
* 管理员密码：创建服务器的时候自行设置，若不记得密码需要通过云控制台重置。
* 管理员账号：不同的云平台有一定的差异
   |  云平台   |  管理员账号   | 其他|
   | --- | --- | --- |
   |  Azure   |  创建服务器的时候自行设置   | [如何开启root账户？](https://support.websoft9.com/docs/azure/zh/server-login.html#示例2：启用系统root账号) |
   |  AWS Centos 系统   |  centos   | [如何开启root账户？](https://support.websoft9.com/docs/aws/zh/server-login.html#示例2：启用系统root账号) |
   |  AWS Ubuntu 系统  |  ubuntu   | [如何开启root账户？](https://support.websoft9.com/docs/aws/zh/server-login.html#示例2：启用系统root账号)  |
   |  AWS AmazonLinux 系统  |  ec2-user   | [如何开启root账户？](https://support.websoft9.com/docs/aws/zh/server-login.html#示例2：启用系统root账号)  |
   |  阿里云，华为云，腾讯云   |  root   | |