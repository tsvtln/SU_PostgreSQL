create or replace procedure
    sp_increase_salaries(department_name varchar)
as
    $$
    BEGIN
        update employees
        set salary = salary + salary * 0.05
        where department_id =
        (select department_id from departments where name = $1);
    END;
    $$
language plpgsql;




