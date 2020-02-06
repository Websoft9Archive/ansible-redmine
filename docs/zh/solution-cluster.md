# Redmine部署架构

一张图看清典型的Redmine部署架构：  

![](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redis-cluster-architecture.png)

## 单机

单机是最简单的一种模式

## 主从

对Redmine来说，主从也就是我们所说的主从复制，主服务器数据更新后根据配置和策略，自动同步到备份服务的一种机制。通常也被称之为：Master-Slave，其中Master以写为主，Slave以读为主。  

这样做的好处显而易见：

* 读写分离
* 容灾恢复

详细部署方案请参考官方文档：https://redis.io/topics/replication

## 集群

Redmine所以很适合用来充当整个互联网架构中各级之间的Cache，为了在大流量访问下提供稳定的业务，Redmine集群化是存储的必然形态。
Redmine Cluster 是官方提供的一种集群方案，通常具有 高可用、可扩展性、分布式、容错等特性。

详细部署方案请参考官方文档：https://redis.io/topics/sentinel

## 高可用性集群

高可用性集群即分布式集群，即多个集群组合。