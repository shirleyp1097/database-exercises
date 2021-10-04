USE codeup_test_db;
SELECT name as 'Name of album', sales as 'Sales' FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT name as 'Name of album', sales as 'Sales' FROM albums;

SELECT name as 'NAme', release_date as 'Release Date' FROM albums
WHERE release_date < 1980;
UPDATE albums
SET release_date = release_date -100
WHERE release_date <= 1980;
SELECT name as 'NAme', release_date as 'Release Date' FROM albums;


SELECT name as 'Albums by Michael Jackson', artist as 'artist' FROM albums
WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT name as 'Albums by Michael Jackson', artist as 'artist' FROM albums
WHERE artist = 'Peter Jackson';
