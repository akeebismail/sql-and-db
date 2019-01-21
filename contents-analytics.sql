-- artists, contents, contracts, distribution platforms, albums, genre
-- pivots = content genre, content distribution platforms, content status role, content statuses, contract package
-- artist status
-- artists have contract, contents
-- contracts have duration, platforms it cover for distribution
-- contents is distributed to platforms, content may belongs to album, have genre
-- album have contents, at least one
-- genre have content

-- select all artists
 SELECT * FROM artists ; -- 2473 rows in set (0.04 sec)

-- select contents
 SELECT * FROM contents ; -- 61624 rows in set (0.23 sec)

-- select contracts
 SELECT * FROM contract_packages; -- 12 rows in set (0.01 sec)

-- select distribution platforms
  SELECT * FROM distribution_platforms ; -- 65 rows in 0.00 sec

-- select albums
 SELECT * FROM albums ; -- 4222 rows in 0.03 sec

-- select genre
SELECT * FROM genres ; -- 20 rows in 0.00

-- artists with expired contracts
SELECT artists.id, name, contract_package_id, start_date, expiry_date FROM  artists
 INNER JOIN artist_contracts AS contract on artists.id = contract.artist_id
 WHERE contract.expiry_date <= NOW() AND  artists.deleted_at IS   NULL AND contract.deleted_at IS NULL

-- artists with active contract
SELECT artists.id, name, contract_package_id, start_date, expiry_date FROM  artists
 INNER JOIN artist_contracts AS contract on artists.id = contract.artist_id
 WHERE contract.expiry_date >= NOW() AND  artists.deleted_at IS   NULL AND contract.deleted_at IS NULL

