CREATE DATABASE medium;
USE medium;

-- Create Table
CREATE TABLE movies (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (220),
    release_date DATE,
    rating DECIMAL (2, 1)
);

-- Insert Data into table
INSERT INTO movies (title, release_date, rating)
VALUES 
("Tenet ", "2020-09-03", 7.5),
("The Shawshank Redemption", "1994-10-14", 9.3),
("The Sound of Music", "1965-04-01", 8.0),
("West Side Story", "1961-10-18", 7.5),
("Forrest Gump", "1994-07-06", 8.8),
("The Silence of the Lambs", "1991-02-14", 8.6),
("Gladiator", "2000-05-05", 8.5),
(" Jurassic Park", "1993-06-11", 8.1),
("Rebel Without a Cause", "1955-10-29", 7.7),
("Soul", "2020-12-25", 8.1);

-- Display all data sorted in descending order within Table where the title contains the letter s
SELECT * FROM movies
WHERE title LIKE "%s%"
ORDER BY release_date DESC;

