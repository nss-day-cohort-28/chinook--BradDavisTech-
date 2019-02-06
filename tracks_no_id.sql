-- tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs. The result should include the Album name, Media type and Genre.

SELECT t.Name as "Track Name", a.Title as "Album Name", m.Name as "Media Type", g.Name as "Genre"
FROM Track as t
LEFT JOIN Album as a on a.AlbumId = t.AlbumId
LEFT JOIN MediaType as m on m.MediaTypeId = t.MediaTypeId
LEFT JOIN Genre as g on g.GenreId = g.GenreId