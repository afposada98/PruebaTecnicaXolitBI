SELECT g.GenreId , g.Name , SUM(ii.UnitPrice*ii.Quantity) TotalVendido
FROM invoice_items ii 
--INNER JOIN invoices i ON ii.InvoiceId = i.InvoiceId 
INNER JOIN tracks t ON ii.TrackId = t.TrackId 
INNER JOIN genres g ON t.GenreId = g.GenreId 
GROUP BY g.GenreId 
ORDER BY 3 DESC
LIMIT 1


--en realidad no era con el total del monto, si no con la cantidad de transacciones pero, no me alcanzó el tiempo para corregirlo