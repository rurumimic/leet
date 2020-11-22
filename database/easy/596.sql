select class
from courses
group by class
having count(distinct student) >= 5;

-- 다음과 같다

select class
from (select class, count(distinct student) num from courses group by class) Temp
where num >= 5;
