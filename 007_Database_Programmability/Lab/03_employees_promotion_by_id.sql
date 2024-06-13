create or replace procedure sp_increase_salary_by_id(id int)
as
    $$
    BEGIN
        if (select
                salary
            from
                employees
            where
                employee_id = id) is null then
            return;
        end if;
        update
            employees
        set
            salary = salary * 1.05
        where
            employee_id = id;
        commit;
    END;
    $$
language plpgsql