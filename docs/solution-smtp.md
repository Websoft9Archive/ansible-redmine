# SMTP

Sending mail is a common feature for Redmine. After a large number of user practice feedback, only one way is recommended, that is, using the **third-party STMP service** to send the email.

> Do not try to install **Sendmail** or other Mail server software on your Cloud Server for sending mail, because it is very difficulty in maintenance.

Follow is the sample using **SendGrid's SMTP Service** to configure sending mail for Redmine:

1. Log in SendGrid console, prepare your SMTP settings like the follow sample
   ```
   SMTP host: smtp.sendgrid.net
   SMTP port: 25 or 587 for unencrypted/TLS email, 465 for SSL-encrypted email
   SMTP Authentication: must be checked
   SMTP Encryption: must SSL
   SMTP username: websoft9smpt
   SMTP password: #fdfwwBJ8f    
   ```
2. Use SSH or SFTP to connect Server, copy */data/wwwroot/redmine/config/configuration.yml.example* and rename it to `configuration.yml`  

3. Modify `configuration.yml` and add the following **SMTP segment** to the **production** part: 
   ```
    email_delivery: 
    delivery_method: :smtp
    smtp_settings: 
    address: "SMTPSERVER"
    port: 587
    domain: "YouDomain"
    authentication: :login 
    user_name: "YouEmail" 
    password: "YouPassword"
    ```
Redmine provides  official documentation for SMTP: [Email Configuration](https://www.redmine.org/projects/redmine/wiki/EmailConfiguration)