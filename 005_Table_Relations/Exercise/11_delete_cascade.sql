alter table
    countries
add
    constraint fk_currency_code
        foreign key (currency_code)
            references currencies(currency_code)
                on delete cascade;

alter table
    countries
add
    constraint fk_continent_code
        foreign key (continent_code)
            references continents(continent_code)
                on delete cascade;

