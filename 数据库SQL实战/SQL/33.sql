create table if not exists actor(
    actor_id smallint(5) not null primary key,
    first_name varchar(45) not null,
    last_name varchar(45) not null,
    last_update timestamp not null default (datetime('now','localtime'))
);