#!/usr/bin/env bash
#   Use this script to setup your database


#docker cp /vagrant/.postgres_init.sql postgres:/postgres_init.sql

#docker exec postgres psql -q -f '/postgres_init.sql

#create users
docker exec devenvproject_postgres_1 psql --command "CREATE USER flask_api_skeleton_user WITH SUPERUSER PASSWORD 'password';"

#create databases
docker exec devenvproject_postgres_1 psql --command "CREATE DATABASE flask_api_skeleton OWNER flask_api_skeleton_user;"

#setup databases
docker exec devenvproject_flask_api_skeleton_1 flask db upgrade
