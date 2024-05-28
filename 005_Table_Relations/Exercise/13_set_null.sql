create table
    customers(
        id serial primary key,
        customer_name varchar(42)
);

create table
    contacts(
        id serial primary key,
        contact_name varchar(42),
        phone varchar(42),
        email varchar(42),
        customer_id int,

        constraint fk_customers_info
            foreign key (customer_id)
                references customers(id)
                    on delete set null
                    on update cascade
);

insert into
    customers(customer_name)
values
    ('BlueBirdInc'),
    ('Dolphin LLC');

insert into
    contacts(contact_name, phone, email, customer_id)
values
    ('John Doe', '(408)-111-1234', 'john.doe@bluebird.dev', 1),
    ('Jane Doe', '(408)-111-1235', 'jane.doe@bluebird.dev', 1),
    ('David Wright', '(408)-222-1234', 'david.wright@dolphin.dev', 2);

delete from
           customers
where
    id = 1;
