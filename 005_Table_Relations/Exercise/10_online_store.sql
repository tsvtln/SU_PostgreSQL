create table
    item_types(
        id serial primary key,
        item_type_name varchar(20)
);

create table
    items(
        id serial primary key,
        item_name varchar(20),
        item_type_id int,

        constraint fk_type_item
            foreign key (item_type_id)
                references item_types(id)
);

create table
    cities(
        id serial primary key,
        city_name varchar(20)
);

create table
    customers(
        id serial primary key,
        customer_name varchar(20),
        birthday date,
        city_id int,
             constraint fk_city_id_con
                foreign key (city_id)
                    references cities(id)
);

create table
    orders(
        id serial primary key,
        customer_id int,
        constraint fk_customer_id_con
          foreign key (customer_id)
            references customers(id)
);


create table
    order_items(
        order_id int,
        item_id int,
        constraint fk_order_con
               foreign key (order_id)
                references orders(id),
        constraint fk_item_con
               foreign key (item_id)
                references items(id)
);

