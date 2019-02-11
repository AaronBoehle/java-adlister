use adlister_db;

-- drop table if exists ads;
-- drop table if exists users;


create table if not exists users (
id int unsigned not null auto_increment,
username varchar (255) not null,
email varchar (255) not null,
password varchar (255) not null,
primary key (id)
)

create table if not exists ads (
id int unsigned not null auto_increment,
user_id int (255) unsigned not null,
title varchar (255) not null,
description varchar (255) not null,
PRIMARY key (id),
FOREIGN KEY (user_id) REFERENCES users(id)
-- ON DELETE CASCADE
);