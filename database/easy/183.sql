select c.Name as Customers
from Customers c left join Orders o on c.Id = o.CustomerId
where o.CustomerId is null;

--

select name as Customers
from Customers
where id not in (select CustomerId from Orders);