#!/bin/bash

DB=$1

psql -h $1 -U postgres
haroldthecat
CREATE DATABASE image_gallery;
CREATE TABLE users (username varchar(255) NOT NULL, password varchar(255) NOT NULL, fullname(255) NOT NULL);
insert into users values('fred', 'foo', 'fred flintstone');
insert into users values('wima', 'foo', 'Wilma flintstone');
CREATE USER image_gallery login password 'simple';
quit

