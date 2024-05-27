drop table if exists peaks;
drop table if exists mountains;

create table mountains (
    id serial primary key,
    name varchar(50) not null
);

create table peaks(
    id serial primary key,
    name varchar(50) not null,
    mountain_id integer,
    constraint fk_mountain_id foreign key (mountain_id)
    on delete cascade
);