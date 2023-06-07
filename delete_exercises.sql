-- Selecting albums released after 1991
SELECT * FROM albums WHERE year > 1991;

-- Deleting albums released after 1991
DELETE FROM albums WHERE year > 1991;

-- Selecting albums with the genre 'Disco'
SELECT * FROM albums WHERE genre = 'Disco';

-- Deleting albums with the genre 'Disco'
DELETE FROM albums WHERE genre = 'Disco';

-- Selecting albums by 'Whitney Houston'
SELECT * FROM albums WHERE artist = 'Whitney Houston';

-- Deleting albums by 'Whitney Houston'
DELETE FROM albums WHERE artist = 'Whitney Houston';
