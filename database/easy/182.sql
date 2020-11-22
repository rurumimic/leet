select Email
from Person
group by Email
having count(Email) > 1;

--

select distinct p1.Email
from Person p1 join Person p2 on p1.Email = p2.Email
where p1.id <> p2.id;
