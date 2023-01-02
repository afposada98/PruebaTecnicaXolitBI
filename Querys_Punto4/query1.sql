SELECT  cst.CustomerID, cst.FirstName, cst.LastName, SUM(inv.Total) Total
FROM invoices inv
INNER JOIN customers cst ON inv.CustomerID = cst.CustomerId
GROUP BY inv.CustomerID
ORDER BY 2 DESC
LIMIT 3


-- en realidad no era con el total del monto, si no con la cantidad de transacciones, pero no me alcanzó el tiempo para corregirlo
