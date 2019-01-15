-- Provide a query showing only the Employees who are Sales Agents.

select * from Employee e
where e.Title like "sales support agent"