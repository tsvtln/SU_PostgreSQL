create table
    products (
        product_name varchar(100)
);

insert into
    products(product_name)
values
    ('Broccoli'),
    ('Shampoo'),
    ('Toothpaste'),
    ('Candy');

alter table products
add column id serial primary key;