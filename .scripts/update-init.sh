#!/bin/bash
# Dump the database and files for initialisation.
ddev drush sql:dump --gzip --result-file=../.init/init.sql
tar -pczf .init/files.tar.gz web/sites/default/files
