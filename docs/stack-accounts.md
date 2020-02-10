# Username and Password

These accounts are required for Redmine installation and configuration

## Redmine

* Administrator username：*`root`*
* Administrator password：`stored in the file of your server instance`  
     - **Password file**: */credentials/password.txt*  
     - **How to?**  Connect instance, and run the `cat` command by **SSH** or open the file by **SFTP**
       ![运行cat命令](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-getpassword-websoft9.png)

## MySQL

* Administrator username：*`root`*
* Administrator password：`stored in the file of your server instance`  
     - **Password file**: */credentials/password.txt*  
     - **How to?**  Connect instance, and run the `cat` command by **SSH** or open the file by **SFTP**
      ![Run the cat command](https://libs.websoft9.com/Websoft9/DocsPicture/zh/common/catdbpassword-websoft9.png)

## Linux

* Host Name: Internet IP or Public IP of your Instance
* Connect by: Online SSH on Cloud Console or SFTP/SSH tools on your local computer
* Password: It was set by yourself when created instance
* Username: Different Cloud Platform has differences
   |  Cloud Platform   |  Administrator Username   | Other |
   | --- | --- | --- |
   |  Azure   |  It was set by yourself when created instance   | [How to enable root access?](https://support.websoft9.com/docs/azure/server-login.html#sample2-enable-the-root-username) |
   |  AWS's Centos  |  centos   | [How to enable root access?](https://support.websoft9.com/docs/aws/server-login.html#sample2-enable-the-root-username) |
   |  AWS's Ubuntu  |  ubuntu   | [How to enable root access?](https://support.websoft9.com/docs/aws/server-login.html#sample2-enable-the-root-username) |
   |  AWS's AmazonLinux  |  ec2-user | [How to enable root access?](https://support.websoft9.com/docs/aws/server-login.html#sample2-enable-the-root-username) |
   |  Alibaba Cloud, HUAWEI CLOUD, Tencent Cloud |  root   |

If don't remember the password of Linux, you should reset password on Cloud Console