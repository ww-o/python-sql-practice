select goods_id id, name, weight, sum(count) total
from goods g
join trans t
on g.id = t.goods_id
group by id, name, weight
having total > 20 and weight < 50
order by goods_id