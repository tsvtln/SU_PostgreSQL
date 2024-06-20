create table accounts(
    id serial primary key,
    username varchar(30) not null unique,
    password varchar(30) not null,
    email varchar(50) not null,
    gender char(1) not null check (gender in ('M', 'F')),
    age integer not null check (age >= 0 and age <= 2147483647),
    job_title varchar(40) not null,
    ip varchar(30) not null
);

create table addresses(
    id serial primary key,
    street varchar(30) not null,
    town varchar(30) not null,
    country varchar(30) not null,
    account_id integer not null,
    foreign key (account_id) references accounts(id) on delete cascade on update cascade
);

create table photos(
    id serial primary key,
    description text,
    capture_date timestamp not null,
    views integer not null default 0 check (views >= 0)
);

create table comments(
    id serial primary key,
    content varchar(255) not null,
    published_on timestamp not null,
    photo_id integer not null,
    foreign key (photo_id) references  photos(id) on delete cascade on update cascade
);

create table accounts_photos(
    account_id integer not null,
    photo_id integer not null,
    primary key
        (account_id, photo_id),
    foreign key
                            (account_id)
                            references accounts(id)
                            on delete cascade
                            on update cascade,
    foreign key
                            (photo_id) references photos(id)
                            on delete cascade
                            on update cascade
);


create table likes(
    id serial primary key,
    photo_id integer not null,
    account_id integer not null,
    foreign key
                  (photo_id) references photos(id)
                  on delete cascade
                  on update cascade,
    foreign key (account_id) references accounts(id)
                  on delete cascade
                  on update cascade
);