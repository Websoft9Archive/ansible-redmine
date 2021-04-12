# Initial Installation

If you have completed the Redmine deployment on Cloud Platform, the following steps is for you to start use it quikly

## Preparation

1. Get the **Internet IP** on your Cloud Platform
2. Check you **[Inbound of Security Group Rule](https://support.websoft9.com/docs/faq/tech-instance.html)** of Cloud Console to ensure the TCP:80 is allowed
3. Make a domain resolution on your DNS Console if you want to use domain for Redmine

## Redmine Installation Wizard

1. Using local Chrome or Firefox to visit the URL *http://DNS* or *http://Instance's Internet IP*, you will enter the register interface of Redmine

2. Click the 【Log in】 link, enter your username and password([Don't know password?](/zh/stack-components.md#redmine))
   ![Redmine login](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-login-websoft9.png)

3. You can see the reminder for password modification in the Redmine console
   ![Redmine modify password](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-resetpwf-websoft9.png)

4. Open 【project】and create new project
   ![Redmine new project](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-createproject-websoft9.png)

5. Go to 【administrator】>【Settings】>【display】 to set the project's language
   ![Redmine set language](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-language-websoft9.png)

6. Go to 【administrator】>【Settings】>【user】 to set the user's language interface(is different from Project's language)
   ![Redmine SSH key](https://libs.websoft9.com/Websoft9/DocsPicture/en/redmine/redmine-userlanguage-websoft9.png)

> More useful Redmine guide, please refer to [Redmine guide](https://www.redmine.org/projects/redmine/wiki/Guide)

## Redmine Setup Wizard

Coming soon...

## Q&A

#### I can't visit the start page of Redmine?

Your TCP:80 of Security Group Rules is not allowed so there no response from Chrome or Firefox

#### Which database does this Redmine use?

MySQL

#### Sometimes 502 error when running?

Redmine need at leaset 2G free memory, If the memory is less than 2, there will be a 502 error.