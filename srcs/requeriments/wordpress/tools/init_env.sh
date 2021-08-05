#!/bin/bash

rm /wordpress/wp-config-sample.php

sed -i "s/db_name/$DB_NAME/" wp-config.php
sed -i "s/db_user/$DB_USER/" wp-config.php
sed -i "s/db_password/$DB_PASSWORD/" wp-config.php
