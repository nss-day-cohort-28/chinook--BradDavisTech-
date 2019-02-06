-- country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY

select count(*) as "Invoice Count", i.BillingCountry as "Country"
from Invoice i
group by i.BillingCountry