alter table
    countries_rivers
add
    constraint fk_country_code
        foreign key (country_code)
            references countries(country_code)
                on update cascade,

add
    constraint fk_river_id
        foreign key (river_id)
            references rivers(id)
                on update cascade;
