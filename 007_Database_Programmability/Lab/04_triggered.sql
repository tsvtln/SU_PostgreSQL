create table deleted_employees(
    employee_id serial primary key,
    first_name varchar(20),
    last_name varchar(20),
    middle_name varchar(20),
    job_title varchar(50),
    department_id int,
    salary numeric(19, 4)
);

create or replace function backup_fired_employees()
returns trigger
as
    $$
    BEGIN
        insert into
            deleted_employees(
                            first_name,
                            last_name,
                              middle_name,
                              job_title,
                              department_id,
                              salary
        )
        values(
               old.first_name,
               old.last_name,
               old.middle_name,
               old.job_title,
               old.department_id,
               old.salary
        );
        return new;
    end;
    $$
language plpgsql;

create or replace trigger backup_employees
    after delete on employees
    for each row
    execute procedure backup_fired_employees();