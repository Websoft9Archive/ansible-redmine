# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

绑定域名的前置条件是：已经完成域名解析（登录域名控制台，增加一个A记录指向服务器公网IP）  

完成域名解析后，从服务器安全和后续维护考量，需要完成**域名绑定**：

Redmine 域名绑定操作步骤：

1. 确保域名解析已经生效  
2. 使用 SFTP 工具登录云服务器
3. 修改 [Nginx虚拟机主机配置文件](/zh/stack-components.md#nginx)，将其中的 **server_name** 项的值修改为你的域名
   ```text
   server
   {
   listen 80;
   server_name rabbitmq.yourdomain.com;  # 此处修改为你的域名
   ...
   }
   ```
4. 保存配置文件，重启 [Nginx 服务](/zh/admin-services.md#nginx)

## 插件

通过 Redmine 提供的[插件中心](https://www.redmine.org/plugins)可以扩展它的功能：

### 安装插件

下面以一个具体的插件为例说明如何安装插件：  

1. 进入[Ajax Redmine Issue Dynamic Edit](https://www.redmine.org/plugins/redmine_issue_dynamic_edit) 插件页面，获取其下载地址

2. 使用 SFTP 登录服务，分别运行如下命令
   ```
   # 进入 Redmine 目录
   cd /data/wwwroot/redmine
   wget https://www.redmine.org/attachments/download/25386/redmine_issue_dynamic_edit.zip
   unzip redmine_issue_dynamic_edit.zip 
   docker cp redmine_issue_dynamic_edit redmine:/usr/src/redmine/plugins
   ```

4. 重启 Redmine 容器服务
   ```
   sudo docker restart redmine
   ```
   
5. 登陆 Redmine 控制台查看插件
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-installplugindy-websoft9.png)


### 卸载插件

1. 使用 SFTP 删除 /data/wwwroot/redmine/plugins 对应的插件
2. 重启 Redmine 容器生效
   ```
   sudo docker restart redmine
   ```

## 更改数据库

在使用 Redmine 的过程中，如果更换了数据库密码，会导致系统无法访问。

此时，需要通过如下步骤完成数据库更改操作：

1. 使用 SFTP 连接服务器，修改 */data/wwwroot/redmine/docker-compose.yml* 文件中的数据库信息
2. 重新运行 Remine 容器服务
   ```
   cd /data/wwwroot/redmine
   docker-compose up -d
   ```
如果更换数据库（例如：MySQL更换到 PostgreSQL），则需要完成数据库迁移工作。

## LDAP

参考官方文档：https://www.redmine.org/projects/redmine/wiki/RedmineLDAP