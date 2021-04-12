# 故障处理

此处收集使用 Redmine 过程中最常见的故障，供您参考

> 大部分故障与云平台密切相关，如果你可以确认故障的原因是云平台造成的，请参考[云平台文档](https://support.websoft9.com/docs/faq/zh/tech-instance.html)

#### Redmine 无法启动？

数据库服务无法启动最常见的问题包括：磁盘空间不足，内存不足，配置文件错误。  
建议先通过命令进行排查  

```shell
# 查看磁盘空间
df -lh

# 查看内存使用
free -lh

# 查看日志
docker logs redmine
```

#### 新建工程，名称为中文的时候，系统报错？

数据库字符编码导致，需修改数据库字符编码为 utf8