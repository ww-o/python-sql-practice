select m.music_name
from music_likes ml
join music m on ml.music_id = m.id
join follow f on f.follower_id = ml.user_id
where f.user_id = 1
and ml.music_id not in (
    select music_id from music_likes
    where user_id = 1    
)
group by music_id
order by music_id