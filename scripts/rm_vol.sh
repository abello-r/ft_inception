#!/bin/bash

if [ -d /home/$USER/data ]
	then
		docker volume rm srcs_db_vol srcs_wp_vol
	fi
