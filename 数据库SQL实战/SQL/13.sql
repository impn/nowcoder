select
    title,
    count(1) as t
from titles
group by title
having t>=2;