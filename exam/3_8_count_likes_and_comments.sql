select
    pht.id as photo_id,
    coalesce(l.likes_count, 0) as likes_count,
    coalesce(c.comments_count, 0) as comments_count
from
    photos pht
left join (
    select
        photo_id,
        count(*) as likes_count
    from
        likes
    group by
        photo_id
) l on pht.id = l.photo_id
left join (
    select
        photo_id,
        count(*) as comments_count
    from
        comments
    group by
        photo_id
) as c on pht.id = c.photo_id
order by
    likes_count desc ,
    comments_count desc ,
    photo_id;
