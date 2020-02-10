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

通过 Redmine 提供的[插件](https://www.redmine.org/plugins)可以扩展它的功能：

### 安装插件

1. 使用 SFTP 工具连接服务器  
2. 下载插件到 */data/wwwroot/redmine/plugins*  
3. cd 到 */data/wwwroot/redmine* 目录下执行命令
   ```
   bundle exec rake redmine:plugins:migrate RAILS_ENV=production
   ```
4. 重启服务
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```
5. 登陆 Redmine 查看插件是否安装好


### 卸载插件

1. 使用 SFTP 工具连接服务器  
2. cd 到 */data/wwwroot/redmine* 目录下执行命令
   ```
   bundle exec rake redmine:plugins:migrate NAME=plugin_name VERSION=0 RAILS_ENV=production   #  plugin_name 为插件名称
   ```
3. 使用 SFTP 删除 /data/wwwroot/redmine/plugins 对应的插件

4. 重启服务
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```

## 更改数据库

在使用 Redmine 的过程中，如果更换了数据库（例如：从MySQL更换到PostgreSQL）或修改了数据库密码，会导致系统无法访问，只需：  

修改 Redmine 数据库连接配置：*/data/wwwroot/redmine/config/database.yml* 中相关的连接参数

## LDAP

参考官方文档：https://www.redmine.org/projects/redmine/wiki/RedmineLDAP