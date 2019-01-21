
/*
SELECT artists.id, name, COUNT(contents.id) AS content_count FROM artists INNER JOIN contents ON artists.id = contents.artist_id
WHERE contents.deleted_at IS NULL  AND artists.deleted_at IS NULL GROUP BY artists.id
*/


/*SELECT artists.id, name, contract_package_id, start_date, expiry_date INTO active FROM  artists
 INNER JOIN artist_contracts AS contract on artists.id = contract.artist_id
 WHERE contract.expiry_date >= NOW() AND  artists.deleted_at IS   NULL AND contract.deleted_at IS NULL*/

SELECT id, name INTO active FROM artists where deleted_at is null;

SELECT name from active;
