SELECT
    CONCAT(act.id, ' ', act.username) AS id_username,
    act.email
FROM
    accounts as act,
    photos as pht
WHERE
    act.id = pht.id
ORDER BY
    act.id ASC;


select
    acc.id,
    pht.id
from accounts as acc, photos as pht
where acc.username = 'aroccob'



select
    concat(acc.id, ' ', acc.username) as id_username,
    acc.email
FROM
    accounts as acc
JOIN
    accounts_photos as acc_pht
ON
    acc.id = acc_pht.account_id
JOIN
    photos as p
ON
    p.id = acc_pht.photo_id
WHERE acc.id = p.id
ORDER BY acc.id;