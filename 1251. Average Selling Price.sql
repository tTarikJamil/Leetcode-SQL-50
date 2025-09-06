select p.product_id, ifnull(round(sum(units * price) / sum(units),2),0) as average_price 
from Prices as p
left join UnitsSold as us
on p.product_id = us.product_id
and purchase_date between start_date and end_date
group by p.product_id