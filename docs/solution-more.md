# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Redmine can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Redmine domain name binding steps:

1. Connect your Cloud Server
2. Modify [Nginx vhost configuration file](/stack-components.md#nginx), change the **server_name**'s value to your domain name
   ```text
   server
   {
   listen 80;
   server_name www.example.com;  # set you domain here
   ...
   }
   ```

## Plugin

You can use the Redmine's [plugins](https://www.redmine.org/plugins) to extend functions:

### Install plugin

The following is a sample for how to install special plugin:  

1. Access Redmine plugin [Ajax Redmine Issue Dynamic Edit](https://www.redmine.org/plugins/redmine_issue_dynamic_edit) page, and get the download URL

2. Use **SFTP** to login Server, run the following commands
   ```
   cd /data/wwwroot/redmine
   wget https://www.redmine.org/attachments/download/25386/redmine_issue_dynamic_edit.zip
   unzip redmine_issue_dynamic_edit.zip 
   docker cp redmine_issue_dynamic_edit redmine:/usr/src/redmine/plugins
   ```

4. Restart Redmine container service
   ```
   sudo docker restart redmine
   ```
   
5. Login to Redmine console to enable you plugin
   ![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-installplugindy-websoft9.png)

### Uninstall plugin

1. Use **SFTP** to login Server, and delete the plugin at: */data/wwwroot/redmine/plugins*
2. Restart Redmine service
   ```
   sudo docker restart redmine
   ```

## Change database connection 

When you changed database's password, your Redmine may be out of service.
How to fix it? You need to modify the **database connection items** in the Redmine's docker configuration file*/data/wwwroot/redmine/docker-compose.yml*

## LDAP

Please read the official docs: https://www.redmine.org/projects/redmine/wiki/RedmineLDAP