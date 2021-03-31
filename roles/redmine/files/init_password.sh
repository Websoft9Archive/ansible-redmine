new_password=$MYSQL_ROOT_PASSWORD
app_pass=$(echo -n $new_password | sha1sum|awk 'BEGIN{ORS=""}{print $1}'|sha1sum|awk '{print $1}')
mysql -uroot -p$new_password -h 127.0.0.1 redmine -e "update users set hashed_password = '$app_pass', salt ='', admin = 1 where login = 'admin';"

