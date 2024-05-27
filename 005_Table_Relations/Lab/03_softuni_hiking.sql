select
    routes.start_point,
    routes.end_point,
    routes.leader_id,
    concat(campers.first_name, ' ', campers.last_name)
from
    routes
join
    campers on routes.leader_id = campers.id;
