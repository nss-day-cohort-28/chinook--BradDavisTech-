-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

select count(InvoiceLineId) as "Invoice #37 Line Count"
from InvoiceLine i
where i.InvoiceId = 37