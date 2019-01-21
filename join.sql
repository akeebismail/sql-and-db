

SELECT artists.id, name, COUNT(contents.id) AS content_count FROM artists INNER JOIN contents ON artists.id = contents.artist_id
WHERE contents.deleted_at IS NULL  AND artists.deleted_at IS NULL GROUP BY artists.id