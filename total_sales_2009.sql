-- What are the respective total sales for each of those years?

select sum(Total) as "Total Sales for 2009"
from Invoice i
where i.InvoiceDate > "2008-12-31 00:00:00" AND i.InvoiceDate < "2010-01-01 00:00:00"