-- playlists_track_count.sql: Provide a query that shows the total number of tracks in each playlist. The Playlist name should be include on the resulant table.

SELECT COUNT(*) as "Number of Tracks", P.Name as "Play List"
FROM Playlist as P
LEFT JOIN PlaylistTrack as PT on P.PlaylistId = PT.PlaylistId
GROUP BY PT.PlaylistId