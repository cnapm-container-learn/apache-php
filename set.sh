#!/bin/bash

sed -i "s#^nbs.license_key =.*#nbs.license_key = \"${TINGYUN_LICENSE_KEY}\"#g" /etc/php5/cli/conf.d/networkbench.ini
sed -i "s#^nbs.app_name=.*#nbs.app_name = \"${TINGYUN_APP_NAME}\"#g" /etc/php5/cli/conf.d/networkbench.ini

sed -i "s#^nbs.license_key =.*#nbs.license_key = \"${TINGYUN_LICENSE_KEY}\"#g" /etc/php5/fpm/conf.d/networkbench.ini
sed -i "s#^nbs.app_name=.*#nbs.app_name = \"${TINGYUN_APP_NAME}\"#g" /etc/php5/fpm/conf.d/networkbench.ini

cp /etc/php5/fpm/conf.d/networkbench.ini /etc/php5/apache2/conf.d/

echo "nbs.license_key=${TINGYUN_LICENSE_KEY}" >> /var/run/networkbench/.networkbench.cfg
echo "nbs.app_name=${TINGYUN_APP_NAME}" >> /var/run/networkbench/.networkbench.cfg

/etc/init.d/php5-fpm start