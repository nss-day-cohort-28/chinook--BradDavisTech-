-- Provide a query that includes the purchased track name with each invoice line item.

select i.InvoiceId as "Invoice ID", t.Name
from InvoiceLine i
join Track t
on t.TrackId = i.TrackId