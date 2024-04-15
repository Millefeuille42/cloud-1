CREATE USER 'wp_user'@'localhost' IDENTIFIED by 'MDP';
CREATE USER 'wp_user'@'%' IDENTIFIED by 'MDP';

CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;

GRANT ALL ON wordpress.* TO 'wp_user'@'localhost' IDENTIFIED BY 'MDP';
GRANT ALL ON wordpress.* TO 'wp_user'@'%' IDENTIFIED BY 'MDP';

FLUSH PRIVILEGES;
