#!/usr/bin/env bash

cd /webroot/wizard && php /usr/bin/composer install

cp /webroot/wizard/.env.docker /webroot/wizard/.env
chown www-data:www-data -R /webroot/wizard/

php /webroot/wizard/artisan migrate --force
php /webroot/wizard/artisan storage:link