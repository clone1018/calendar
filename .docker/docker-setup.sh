#!/bin/bash
set -e

# mysql -h db -u $MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < config/schema/schema.sql

cp /usr/src/calendar/.docker/app-config/app.php /usr/src/calendar/config/app.php

exec "$@"