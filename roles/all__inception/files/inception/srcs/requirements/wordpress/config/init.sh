sed -i "s|MDP_WP|$MYSQL_WP_PASSWORD|" /var/www/html/wordpress/wp-config.php

php-fpm7 -F -R
