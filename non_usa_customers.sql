-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.

select FirstName || " " || LastName as "Full Name", CustomerId as "Customer Id", Country as "Country"
from Customer c
where c.Country != "USA"