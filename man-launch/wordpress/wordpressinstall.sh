#!/bin/bash
export http_proxy=http://wwwproxy.sandia.gov:80/
export https_proxy=https://wwwproxy.sandia.gov:80/

apt-get update
apt-get install -y wget

wget https://raw.github.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

php wp-cli.phar --info

chmod 733 wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp --allow-root core install --url=http://localhost:8000 --title=FaC --admin_user=supervisor --admin_password=strongpassword --admin_email=info@example.com
wp --allow-root post create /bin/post-content.txt --post_type='post' --post_title='FFRDC-as-Code' --post_status=publish --post_date=$post_date --post-author=$post_author
#wp --allow-root comment create --comment_post_ID=4 --comment_content="Hello FFRDC!" --comment_author="wp-cli"
