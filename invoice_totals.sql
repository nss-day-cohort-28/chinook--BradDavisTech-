-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

select i.Total as "Invoice Total", c.FirstName || " " || c.LastName || " with " || c.Company as "Customer with Company", c.Country as "Country", e.FirstName || " " || e.LastName as "Sales Agent"
from Invoice i
left join
Customer c
on c.CustomerId = i.CustomerId
left join
Employee e
on e.EmployeeId = c.SupportRepId
order by e.EmployeeId asc