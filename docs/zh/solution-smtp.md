# SMTP

大量用户实践反馈，使用**第三方 SMTP 服务发送邮件**是一种最稳定可靠的方式。  

请勿尝试在服务器上安装sendmail等发邮件方案，因为邮件系统的路由配置受制与域名、防火墙、路由等多种因素制约，导致不稳定、不易维护、诊断故障困难。

下面以**QQ企业邮箱**为例，提供设置 Redmine 发邮件的步骤：

1. 在QQ邮箱管理控制台获取 SMTP 相关参数
   ```
   SMTP host: smtp.exmail.qq.com
   SMTP port: 465 or 587 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: xxxx@xx.com
   SMTP password: #wwBJ8    //需要注意的是密码中不能包含单引号，否则出错
   ```
2. 通过 SFTP 工具远程连接服务器，将 */data/wwwroot/redmine/config/configuration.yml.example* 文件复制一份，命名为 `configuration.yml`  

3. 修改 `configuration.yml` 文件，找到 “production:”, 在production下面添加:  
   ```
    email_delivery: #(前面2个空格）
    delivery_method: :smtp #（前面4个空格）
    smtp_settings: #（前面4个空格）
    address: "SMTPSERVER"	#（前面6个空格）
    port: 587	#（前面6个空格）
    domain: "YouDomain"	#（前面6个空格）
    authentication: :login #（前面6个空格）
    user_name: "YouEmail" #（前面6个空格）
    password: "YouPassword" #（前面6个空格）
    ```
    > 注意缩进/空格,按照规定格式配置，否则redmine报错

Redmine 官方提供了数十种不同 SMTP 配置方法，请参考官方文档： [Email Configuration](https://www.redmine.org/projects/redmine/wiki/EmailConfiguration)