#!/bin/sh
#
user="root"
password="root"
host="localhost"
db_name="wordpress_db"
dir="/home/puvikaran/Backups/wordpress_db"
date=$(date +"%d-%m-%Y")
unmask 177
mysqldump --user=$user --password=$password --host=$host $db_name > $dir/$db_name-$date.sql
find $dir/* -name *.sql -mtime +30 -exec rm {} \;
