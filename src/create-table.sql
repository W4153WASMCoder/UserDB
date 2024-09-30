drop schema if exists db_user;

create schema db_user;

use db_user;

create table if not exists users(
    user_id         int not null,
    user_name       nvarchar(100) not null,
    password        nvarchar(255) not null,
    email           nvarchar(100) not null,
    create_date     datetime default now(),
    last_login      datetime default now(),
    primary key (user_id)
);

create table if not exists active_tokens(
    token_id        int not null,
    user_id         int,
    ttl             int default 3600,
    create_date     datetime default now(),
    primary key (token_id),
    foreign key (user_id) references users(user_id)
);