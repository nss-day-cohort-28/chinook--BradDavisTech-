-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

select  i.InvoiceId as "Invoice ID", i.InvoiceDate as "Invoice Date", i.Total as "Invoice Total", count(*) as "Invoice Line Items Count"
from InvoiceLine L
Join Invoice i
On i.InvoiceId = L.InvoiceId
group by i.InvoiceId