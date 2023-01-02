SELECT e.EmployeeId , e.FirstName , e.LastName , SUM(i.Total)
FROM invoices i
INNER JOIN customers c ON c.CustomerId = i.CustomerId 
INNER JOIN employees e ON e.EmployeeId = c.SupportRepId 
GROUP BY e.EmployeeId  
ORDER BY 4 ASC
LIMIT 1