-- line_item_track_artist.sql: Provide a query that includes the purchased track name AND artist name with each invoice line item.

select i.InvoiceId as "Invoice ID", t.Name AS 'Track Name', a.Name AS 'Artist Name'
	from InvoiceLine i
	join Track t
	on t.TrackId = i.TrackId
	join Album al
	on al.AlbumId = t.AlbumId
	join Artist a
	on a.ArtistId = al.ArtistId