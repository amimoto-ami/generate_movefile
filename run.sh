#!/usr/bin/env bash

cd /var/www/vhosts/$(curl -L http://169.254.169.254/latest/meta-data/instance-id)

php -r 'require "wp-config.php";
echo "\n";
echo "default:\n";
echo "  vhost: " . home_url() . "\n";
echo "  wordpress_path: " . getcwd() . "\n";
echo "\n";
echo "  database:\n";
echo "    name: " . DB_NAME . "\n";
echo "    user: " . DB_USER . "\n";
echo "    password: " . DB_PASSWORD . "\n";
echo "    host: " . DB_HOST . "\n";
echo "\n";
'
