# Troubleshooting

We collect the most common troubleshooting of using aaPanel for your reference:

> Many troubleshooting is closely related to the Server, if you can confirm troubleshooting is related to Cloud Platform, please refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### Database service could not be started?

Insufficient disk space, insufficient memory, and configuration file errors can make database service could not be started  

It is recommended to first check through the command.

```shell
# restart mysql service
systemctl restart mysql

# view disk space
df -lh

# view memory rate
free -lh 
```

#### Can't open PID file /var/run/redis.pid (yet?) after start: No such file or directory

问题：运行命令：sudo systemctl status redis，状态是active，但是下面有段报错信息：Can't open PID file /var/run/redis.pid (yet?) after start: No such file or directory  
原因：Redmine自身的服务PID被其他服务占用  
方案：检查自行创建的服务是否占用了默认服务