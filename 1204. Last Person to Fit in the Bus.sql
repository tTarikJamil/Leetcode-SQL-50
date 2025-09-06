select person_name
from (select turn,person_id ,person_name,weight,sum(weight) over (order by turn) as total_weight
from Queue) as one_piece_is_real
where total_weight <=1000
order by total_weight desc
limit 1
