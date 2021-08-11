CREATE DATABASE wordpress;
CREATE USER 'mysql_user'@'localhost' IDENTIFIED BY 'mysql_user';
GRANT ALL PRIVILEGES ON *.* TO 'mysql_user'@'localhost';
FLUSH PRIVILEGES;
