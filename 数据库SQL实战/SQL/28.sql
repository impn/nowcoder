SELECT
    t2.name,
    COUNT(1) AS t
FROM
    film AS t1,
    category AS t2,
    film_category AS t3,
    (SELECT category_id,COUNT(1)AS cnt FROM film AS t1,film_category AS t2 WHERE t1.film_id=t2.film_id GROUP BY category_id)AS t4
WHERE t1.film_id=t3.film_id
AND t2.category_id=t3.category_id
AND t4.category_id=t3.category_id
AND t1.description LIKE '%robot%'
AND t4.cnt>=5
GROUP BY t2.category_id;

-- 这题有一个陷阱，电影数目>=5 是这类电影的所有数目，并不是包含了robot的这类电影的数目。上面的t4表包含了每种分类包含的电影数量。