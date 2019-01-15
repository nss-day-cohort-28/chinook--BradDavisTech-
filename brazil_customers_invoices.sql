-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.

select FirstName || " " || LastName as "Full Name", i.InvoiceId as "Invoice Id", i.InvoiceDate as "Invoice Date", i.BillingCountry as "Billing Country"
from Customer c
left join
invoice i
on i.CustomerId = c.CustomerId
where c.Country = "Brazil"
order by "Full Name" asc