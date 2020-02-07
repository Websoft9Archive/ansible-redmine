# SSL/HTTPS

完成Redmine域名绑定且可以通过HTTP访问之后，方可设置HTTPS。

Redmine 预装包，已安装Web服务器 SSL 模块和公共免费证书方案 [Let's Encrypt](https://letsencrypt.org/) ，并完成预配置。

> 除了虚拟主机配置文件之外，HTTPS设置则不需要修改Nginx其他文件

我们提供两种配置方法，请根据实际情况选择其中之一：

## 交互式配置

如果你没有证书，而且想使用免费证书，甚至，只需在服务器中运行一条命令`certbot`就可以启动交互式证书部署

```
sudo certbot
```

## 手动配置

如果你已经申请了商业证书（免费版或收费版均可），参考如下HTTPS配置说明：

1. 将申请的证书、 证书链文件和秘钥文件上传到 */data/cert* 目录
2. 打开虚拟主机配置文件：*/etc/nginx/conf.d/default.conf* ，插入**HTTPS 配置段** 到 Nextcloud 的 *server{ }* 中
 ``` text
   #-----HTTPS template start------------
   listen 443 ssl; 
   ssl_certificate /data/cert/xxx.crt;
   ssl_certificate_key /data/cert/xxx.key;
   ssl_session_timeout 5m;
   ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
   ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:HIGH:!aNULL:!MD5:!RC4:!DHE;
   ssl_prefer_server_ciphers on;
   #-----HTTPS template end------------
   ```
3. 修改 ssl_certificate, ssl_certificate_key 的值
4. 保存，[重启 Nginx 服务](/zh/admin-services.html#nginx)

## 延伸阅读

若参考上面的**简易步骤**仍无法成功设置 HTTPS 访问，请阅读由 Websoft9 提供的 [《HTTPS 专题指南》](https://support.websoft9.com/docs/faq/zh/tech-https.html#nginx)

HTTPS专题指南方案包括：HTTPS 前置条件、HTTPS 配置段模板、注意事项、详细步骤以及故障诊断等具体方案。