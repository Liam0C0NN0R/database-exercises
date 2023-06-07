USE codeup_test_db;
--Make all the albums 10 times more popular (sales * 10)
SELECT * FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT * FROM albums;


-- Move all the albums before 1980 back to the 1800s.
SELECT * FROM albums
WHERE year < 1980;

UPDATE albums
SET year = year - 100
WHERE year < 1980;

SELECT * FROM albums
WHERE year < 1900;


-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT * FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT * FROM albums
WHERE artist = 'Peter Jackson';

