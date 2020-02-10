# More

Each of the following solutions has been proven to be effective and we hope to be helpful to you.

## Domain binding

The precondition for binding a domain is that Redmine can accessed by domain name.

Nonetheless, from the perspective of server security and subsequent maintenance considerations, the **Domain Binding** step cannot be omitted.

Redmine domain name binding steps:

1. Use WinSCP to edit the file: */data/wwwroot/redmine/config/configuration.yml* 
2. Modify the domain name related items and save it 
3. Restart services
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```

## Plugin

You can use the Redmine's [plugins](https://www.redmine.org/plugins) to extend functions:

### Install plugin

1. Use the SFTP to connect server  
2. Download the plugin to the directory: */data/wwwroot/redmine/plugins*  
3. cd to the directory */data/wwwroot/redmine* and excuse the following command
   ```
   bundle exec rake redmine:plugins:migrate RAILS_ENV=production
   ```
4. Restart services
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```
5. Login to Redmine to check your plugin


### Uninstall plugin

1. Use the SFTP to connect server   
3. cd to the directory */data/wwwroot/redmine* and excuse the following command
   ```
   bundle exec rake redmine:plugins:migrate NAME=plugin_name VERSION=0 RAILS_ENV=production   #  plugin_name 为插件名称
   ```
3. Use SFTP to delete your plugin in the directory: */data/wwwroot/redmine/plugins*

4. Restart services
   ```
   sudo systemctl restart nginx
   sudo systemctl restart redmine
   ```

## Change database connection 

When you changed database engin(e.g. MySQL to PostreSQL) or modify the database's password, your Redmine may be out of service.
How to fix it? You need to modify the **database connection items** in the Redmine's database configuration file*/data/wwwroot/redmine/config/database.yml*

## LDAP

Please read the official docs: https://www.redmine.org/projects/redmine/wiki/RedmineLDAP