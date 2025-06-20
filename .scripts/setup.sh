#!/bin/bash
# Start DDEV.
ddev start
# Initialise dependencies.
ddev composer install --no-interaction
# Initialise the database.
gunzip -c .init/init.sql.gz | ddev mysql
# Initialise files.
rm -rf web/sites/default/files
tar -xzf .init/files.tar.gz web/sites/default/files
# Update config.
ddev drush deploy
# Launch the site.
ddev launch
