select
    vehicles.driver_id,
    vehicles.vehicle_type,
    concat(campers.first_name, ' ', campers.last_name)
from
    vehicles
join
    campers on vehicles.driver_id = campers.id;