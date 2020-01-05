select
    t1.film_id,
    t1.title
from film as t1
left join film_category as t2
on t1.film_id=t2.film_id
where category_id is null;