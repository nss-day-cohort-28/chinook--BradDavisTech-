-- top_2009_agent.sql: Which sales agent made the most in sales in 2009?

-- Hint: Use the MAX function on a subquery.

SELECT TopEmployee.EmployeeName AS "Employee", MAX(TopEmployee.TotalSales) AS "2009 Sales"
FROM(
SELECT e.FirstName || " " || e.LastName as EmployeeName, "$" || ROUND(SUM(case when i.InvoiceDate like "2009%" then i.Total END), 2) as TotalSales
FROM Employee as e
JOIN Customer as c on SupportRepId = e.EmployeeId
JOIN Invoice as i on i.CustomerId = c.CustomerId
GROUP BY EmployeeName

) AS TopEmployee;