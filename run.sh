#!/usr/bin/env bash

cd /var/www/vhosts/$(curl -L http://169.254.169.254/latest/meta-data/instance-id)

php -r 'require "wp-config.php";
$ipv4 = file_get_contents( "http://169.254.169.254/latest/meta-data/public-ipv4" );

echo "\n";
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
echo "  exclude:
    - \".git/\"
    - \".gitignore\"
    - \".sass-cache/\"
    - \"bin/\"
    - \"tmp/*\"
    - \"Gemfile*\"
    - \"Movefile\"
    - \"wp-config.php\"
    - \"wp-content/*.sql\"\n";
echo "\n";
echo "  ssh:\n";
echo "    host: " . $ipv4 . "\n";
echo "    port: " . 22 . "\n";
echo "    user: ec2-user\n";
echo "    rsync_options: --verbose\n";
echo "\n";
'
