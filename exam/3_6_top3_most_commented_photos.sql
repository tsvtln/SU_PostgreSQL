select
    pht.id as photo_id,
    pht.capture_date,
    pht.description,
    count(cmnt.*) as comments_count
from
    photos as pht
join
        comments as cmnt
on pht.id = cmnt.photo_id
where
    pht.description is not null
group by
    pht.id,
    pht.capture_date,
    pht.description
order by
    comments_count desc,
    photo_id
limit 3;
