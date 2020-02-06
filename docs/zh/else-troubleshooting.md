# 故障处理

此处收集使用 Redmine 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### 数据库服务无法启动

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh
```

#### Can't open PID file /var/run/redis.pid (yet?) after start: No such file or directory

问题：运行命令：sudo systemctl status redis，状态是active，但是下面有段报错信息：Can't open PID file /var/run/redis.pid (yet?) after start: No such file or directory  
原因：Redmine自身的服务PID被其他服务占用  
方案：检查自行创建的服务是否占用了默认服务