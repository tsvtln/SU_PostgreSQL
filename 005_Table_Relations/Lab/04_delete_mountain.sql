create table mountains(
    id int generated always as identity primary key,
    name varchar(50)
);

create table peaks(
    id int generated always as identity primary key,
    name varchar(50),
    mountain_id int,
    constraint fk_mountain_id FOREIGN key(mountain_id)
        references mountains(id)
            on delete cascade
);