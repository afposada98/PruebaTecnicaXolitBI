SELECT art.ArtistId , art.Name , SUM(ii.UnitPrice*ii.Quantity) TotalVendido
FROM invoice_items ii 
--INNER JOIN invoices i ON ii.InvoiceId = i.InvoiceId 
INNER JOIN tracks t ON ii.TrackId = t.TrackId 
INNER JOIN albums a ON t.AlbumId = a.AlbumId 
INNER JOIN artists art ON a.ArtistId = art.ArtistId 
GROUP BY art.ArtistId 
ORDER BY 3 DESC
LIMIT 1