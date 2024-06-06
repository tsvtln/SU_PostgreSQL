select
    pg_terminate_backend(pid)
from
    pg_stat_activity
where datname = 'book_library';

drop database geography_db;
drop database gringotts_db;
drop database hotel;
drop database online_store_db;
drop database photo_shooting_db;
drop database restaurant;
drop database softuni_management_db;
drop database study_session_db;
drop database subqueries_joins_booking_db;
drop database table_relations_geography_db;
