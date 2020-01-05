select
    title,
    description
from film as t1
join film_category as t2
on t1.film_id=t2.film_id
where category_id=(select category_id from category where name="Action");