-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.

select i.*, c.SupportRepId as "Employee Id Number", e.FirstName || " " || e.LastName as "Employee Full Name"
from Invoice i
left join
Customer c
on c.CustomerId = i.CustomerId
left join
Employee e
on e.EmployeeId = c.SupportRepId
order by e.EmployeeId asc