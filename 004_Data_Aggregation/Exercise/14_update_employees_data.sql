update
    employees
set
    salary =
        case
            when hire_date < '2015-01-16' then salary + 2500
            when hire_date < '2020-03-04' then salary + 1500
            else salary
        end,
    job_title =
        case
		     when hire_date < '2015-01-16' then concat('Senior ', job_title)
		     when hire_date < '2020-03-04' then concat('Mid-', job_title)
		     else job_title
		end;
		