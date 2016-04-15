CREATE USER 'user_w'@'%' IDENTIFIED BY 'user_w';
GRANT ALL PRIVILEGES ON *.* TO 'user_w'@'%';
CREATE USER 'user_r'@'%' IDENTIFIED BY 'user_r';
GRANT SELECT ON *.* TO 'user_r'@'%';
