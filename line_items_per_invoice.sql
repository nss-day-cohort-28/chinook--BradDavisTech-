-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

select count(*) as "Invoice Line Items Count", i.InvoiceId as "Invoice ID"
from InvoiceLine i
group by i.InvoiceId