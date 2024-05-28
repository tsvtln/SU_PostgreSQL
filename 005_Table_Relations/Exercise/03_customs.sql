create table
    passports(
        id int generated always as identity (start with 100 increment by 1) primary key,
        nationality varchar(50)
);

insert into
    passports(nationality)
values
    ('N34FG21B'),
    ('K65LO4R7'),
    ('ZE657QP2');

create table
    people(
        id serial primary key,
        first_name varchar(50),
        salary numeric(10, 2),
        passport_id int,

    constraint fk_constraint_people
          foreign key (passport_id)
            references passports(id)
);

insert into
    people(first_name, salary, passport_id)
values
    ('Roberto', 43300.0000, 101),
    ('Tom', 56100.0000, 102),
    ('Yana', 60200.0000, 100);


