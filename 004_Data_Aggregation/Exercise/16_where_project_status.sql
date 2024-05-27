select project_name,
    case
        when start_date is null and end_date is null then 'Ready for development'
        when start_date is not null and end_date is null then 'In Progress'
        else 'Done'
    end
from projects where project_name like '%Mountain%';