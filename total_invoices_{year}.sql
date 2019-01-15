-- How many Invoices were there in 2009 and 2011?
select count() as "Invoice Count for 2009 and 2011"
from Invoice i
where "2010-01-01 00:00:00" > i.InvoiceDate  and i.InvoiceDate > "2008-12-31 00:00:00"
or  "2012-01-01 00:00:00" > i.InvoiceDate and i.InvoiceDate > "2010-01-01 00:00:00"

-- ONLY FOR 2009
-- select count() as "Invoice Count for 2009"
-- from Invoice i
-- where i.InvoiceDate > "2008-12-31 00:00:00"
-- and i.InvoiceDate < "2010-01-01 00:00:00"

-- ONLY FOR 2011
-- select count() as "Invoice Count for 2011"
-- from Invoice i
-- where i.InvoiceDate > "2010-12-31 00:00:00"
-- and i.InvoiceDate < "2012-01-01 00:00:00"