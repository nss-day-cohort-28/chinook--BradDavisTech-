-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName || " " || e.LastName as "Employee" , "$" || ROUND(SUM(i.Total), 2) as "Sales"
FROM Employee as e
JOIN Customer as c on c.SupportRepId = e.EmployeeId
JOIN Invoice as i on i.CustomerId = c.CustomerId
GROUP BY Employee
ORDER BY Employee DESC;
