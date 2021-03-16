# 初始化安装

在云服务器上部署 Redmine 预装包之后，请参考下面的步骤快速入门。

## 准备

1. 在云控制台获取您的 **服务器公网IP地址** 
2. 在云控制台安全组中，检查 **Inbound（入）规则** 下的 **TCP:80** 端口是否开启
3. 若想用域名访问 Redmine，请先到 **域名控制台** 完成一个域名解析

## Redmine 安装向导

1. 使用本地 Chrome 或 Firefox 浏览器访问网址：*http://域名* 或 *http://服务器公网IP*, 进入Redmine主页。

2. 点击【登录】，进入系统 [不知道账号密码？](/zh/stack-accounts.md)
   ![Redmine 密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-login-websoft9.png)

3. 进入 Redmine 控制台，系统提示修改密码 
   ![Redmine 修改密码](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-resetpwf-websoft9.png)

4. 打开：【项目】，新建一个项目
   ![Redmine 新建项目](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-createproject-websoft9.png)

5. 通过：【管理】>【配置】>【显示】，设置 Redmine 项目区语言
   ![Redmine 设置语言](https://libs.websoft9.com/Websoft9/DocsPicture/zh/redmine/redmine-language-websoft9.png)

6. 通过：【管理】>【配置】>【用户】，设置 Redmine 用户语言（区别于项目区语言）
   ![Redmine SSH key](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-userlanguage-websoft9.png)

> 需要了解更多 Redmine 的使用和配置，请参考官方文档：[Redmine guide](https://www.redmine.org/projects/redmine/wiki/Guide)

## 常见问题

#### 浏览器打开IP地址，无法访问 Redmine（白屏没有结果）？

您的服务器对应的安全组80端口没有开启（入规则），导致浏览器无法访问到服务器的任何内容

#### Redmine能打开，但总是出现502错误？

Redmine 所需内存最低为2G，若服务器配置较低或并发访问超过服务器计算能力，会出现502错误

#### 本部署包采用的哪个数据库来存储 Redmine 数据？

MySQL
