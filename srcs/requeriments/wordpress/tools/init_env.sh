#!/bin/sh

sed -i "s/db_name/$DB_NAME/" var/www/html/wordpress/wp-config.php
sed -i "s/db_user/$DB_USER/" var/www/html/wordpress/wp-config.php
sed -i "s/db_password/$DB_PASSWORD/" var/www/html/wordpress/wp-config.php

