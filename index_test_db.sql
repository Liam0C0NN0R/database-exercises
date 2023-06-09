USE codeup_test_db;

ALTER TABLE albums
    ADD CONSTRAINT UC_Album_Artist UNIQUE (album, artist);


INSERT INTO albums (artist, album, year, genre, sales)
VALUES ('The Beatles', 'Abbey Road', 1969, 'Rock', 30);
