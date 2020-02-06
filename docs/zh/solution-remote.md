# 设置 Redmine 远程访问

当你想通过本地的电脑的Redmine客户端（例如：RedmineInsight）连接服务器上的Redmine的时候，就需要设置 Redmine 的远程访问。

数据库是高安全应用，设置远程访问，最少两个独立的步骤：

## 安全组放通6379端口

一般来说，MySQL使用的是6379端口。  

首先，我们要登录到云控制台，打开云服务器所在的安全组中，保证6379端口是开启的。


## 开启Redmine远程连接

安全组开启后，还没有完成Redmine远程方案的设置。  

接下来，还需要对 Redmine 配置文件进行检查，以便其接受外部网络的访问。下面配置内容表示没有限制任何IP访问：

```
# By default Redmine listens for connections from all the network interfaces
# available on the server. It is possible to listen to just one or multiple
# interfaces using the "bind" configuration directive, followed by one or
# more IP addresses.
#
# Examples:
#
# bind 192.168.1.100 10.0.0.1
# bind 127.0.0.1
```

如果要关闭任何IP访问，仅限于本机访问，去掉"#"，重启服务。
