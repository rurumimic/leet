select a.id
from (select id, recordDate, date_add(recordDate, interval -1 day) yesterday, temperature from Weather) a 
join Weather b
on a.yesterday = b.recordDate
where a.temperature > b.temperature;

--

select a.id
from Weather a join Weather b 
on datediff(a.recordDate, b.recordDate) = 1 and a.temperature > b.temperature;