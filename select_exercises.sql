USE codeup_test_db;

SELECT album
FROM albums
WHERE artist = 'Pink Floyd';

SELECT year
FROM albums
WHERE album = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre
FROM albums
WHERE album = 'Nevermind';

SELECT artist, album, year
FROM albums
WHERE year BETWEEN 1990 AND 1999;

SELECT artist, album, sales
FROM albums
WHERE sales < 30;

SELECT artist, album
FROM albums
WHERE genre = 'Rock';

SELECT artist, album
FROM albums
WHERE genre LIKE '%Rock%';