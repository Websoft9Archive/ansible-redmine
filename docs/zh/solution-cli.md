# Redmine CLI

## 关于

redis-cli 是Redmine命令行界面，这是一个简单的程序，可以将命令直接发送到Redmine，并直接从终端读取服务器发送的回复。

它有两种主要模式：

* 交互式模式，其中存在一个REPL（读取评估打印循环），用户可以在其中键入命令并获得答复；
* 另一种模式是将命令作为的参数发送redis-cli，执行并打印在标准输出上。

## 使用

常用命令包括：

| **Command** | **Description** |
| --- | --- |
| redis-benchmark | Performance test |
| SAVE | Backup Data |
| CONFIG GET dir | Restore Data |
| INFO | Manage Redmine services |

详情查看官方文档：https://redis.io/topics/rediscli