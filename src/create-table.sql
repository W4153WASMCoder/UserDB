drop schema if exists db_user;

create schema db_user;

use db_user;

CREATE TABLE if not exists Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    sub VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255),
    picture VARCHAR(2083),
    lastLogin DATETIME,
    INDEX (email)
);


create table if not exists active_tokens(
    token_id        int not null,
    user_id         int,
    ttl             int default 3600,
    create_date     datetime default now(),
    primary key (token_id),
    foreign key (user_id) references users(user_id)
);
