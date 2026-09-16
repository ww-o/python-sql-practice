select sj.name, count(sm.id) cnt
from submission sm
join subject sj
on sm.subject_id = sj.id 
where sm.create_time = date(now())
group by sj.name, sm.subject_id
order by cnt desc, sm.subject_id