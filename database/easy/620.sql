select id, movie, description, rating
from cinema
where id % 2 = 1 and description != 'boring'
order by rating desc;

--

select id, movie, description, rating
from cinema
where mod(id, 2) = 1 and description != 'boring'
order by rating desc;