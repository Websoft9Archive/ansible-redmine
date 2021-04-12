# Troubleshooting

We collect the most common troubleshooting of using aaPanel for your reference:

> Many troubleshooting is closely related to the Server, if you can confirm troubleshooting is related to Cloud Platform, please refer to [Cloud Platform Documentation](https://support.websoft9.com/docs/faq/tech-instance.html)

#### Redmine error?

Insufficient disk space, insufficient memory, and configuration file errors can make database service could not be started  

It is recommended to first check through the command.

```shell
# view the logs of Redmine
sudo docker logs redmine

# view disk space
df -lh

# view memory rate
free -lh 
```