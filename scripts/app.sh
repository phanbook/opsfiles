#!/usr/bin/env bash
#cp app/config/config.example.php app/config/config.php
echo ">>Install composer"
cd "${ROOT_DIR}"

if [ ! -d "vendor" ]; then
    php composer.phar install --no-ansi --no-dev --no-interaction --no-progress --no-scripts --optimize-autoloader
fi
cp common/config/config.example.php common/config/config.php
#chmod 777 -R apps/logs
chmod 777 -R apps/cache/volt

