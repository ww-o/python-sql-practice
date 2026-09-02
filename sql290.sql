select u.id, u.name, g.total_grade grade_num
from (
    select user_id,
    sum(case type when 'add' then grade_num when 'reduce' then -grade_num end) total_grade,
    dense_rank()over(order by sum(case type when 'add' then grade_num when 'reduce' then -grade_num end) desc) rk
    from grade_info
    group by user_id
) g
left join user u
on u.id = g.user_id
where rk = 1
order by u.id

