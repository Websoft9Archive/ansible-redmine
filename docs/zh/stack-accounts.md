# 账号密码

通过**SSH**连接云服务器，运行 `sudo cat /credentials/password.txt` 命令，查看所有相关账号和密码

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-getpassword-websoft9.png)

下面列出可能需要用到的几组账号密码：

## Redmine

* Redmine 用户名：`admin`  
* Redmine 密  码：存储在您的服务器中的文件中 */credentials/password.txt*  

## MySQL

* 管理员账号：*`root`*
* 管理员密码：存储在您的服务器中的文件中 */credentials/password.txt*  

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