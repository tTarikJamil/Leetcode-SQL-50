select name as results
from (
    select name,count(*) as total_count
    from Users as u
    left join MovieRating as mr
    on u.user_id = mr.user_id
    group by name
    order by total_count desc,name 
    limit 1
) as users
union all
select title as results
from (
    select title,avg(rating) as total_rating
    from Movies as m
    join MovieRating as mr
    on m.movie_id = mr.movie_id
    where created_at between '2020-02-01' and '2020-02-28'
    group by title
    order by total_rating desc, title
    limit 1
) as movie_rating