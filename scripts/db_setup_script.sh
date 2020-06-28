#!/bin/bash

DB=$1
export PGPASSWORD='haroldthecat'
psql -h $1 -U postgres

psql -c CREATE DATABASE image_gallery;
psql -c CREATE TABLE users (username varchar(255) NOT NULL, password varchar(255) NOT NULL, fullname(255) NOT NULL);
psql -c insert into users values('fred', 'foo', 'fred flintstone');
psql -c insert into users values('wima', 'foo', 'Wilma flintstone');
psql -c CREATE USER image_gallery login password 'simple';


