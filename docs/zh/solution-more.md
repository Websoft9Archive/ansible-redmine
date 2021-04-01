# 更多...

下面每一个方案，都经过实践证明行之有效，希望能够对你有帮助

## 域名绑定

绑定域名的前置条件是：Redmine已经可以通过解析后的域名访问。虽然如此，从服务器安全和后续维护考量，**域名绑定**步骤不可省却  

Redmine 具体绑定域名操作：

1. 使用 WinSCP 打开文件：/data/wwwroot/redmine/config/configuration.yml
2. 修改配置文件中与域名相关的值，然后保存
3. 重启服务后生效
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```

## 插件

通过 Redmine 提供的[插件中心](https://www.redmine.org/plugins)可以扩展它的功能：

### 安装插件

下面以一个具体的插件为例说明如何安装插件：  

1. 获取[Ajax Redmine Issue Dynamic Edit](https://www.redmine.org/plugins/redmine_issue_dynamic_edit) 插件的下载地址
2. 使用 SFTP 登录服务，分别运行如下命令
   ```
   # 进入 Redmine 目录
   cd /data/wwwroot/redmine
   wget https://www.redmine.org/attachments/download/25386/redmine_issue_dynamic_edit.zip
   unzip redmine_issue_dynamic_edit.zip 
   docker cp redmine_issue_dynamic_edit redmine:/usr/src/redmine/plugins
   ```
4. 重启 Redmine 容器
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

在使用 Redmine 的过程中，如果更换了数据库（例如：从MySQL更换到PostgreSQL）或修改了数据库密码，会导致系统无法访问，只需：  

修改 Redmine 数据库连接配置：*/data/wwwroot/redmine/config/database.yml* 中相关的连接参数

## LDAP

参考官方文档：https://www.redmine.org/projects/redmine/wiki/RedmineLDAP