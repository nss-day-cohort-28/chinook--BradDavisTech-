-- Provide a query showing a unique/distinct list of billing countries from the Invoice table.

select BillingCountry from Invoice i
group by i.BillingCountry
order by i.BillingCountry asc