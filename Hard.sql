USE medium;

CREATE TABLE movies (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR (220),
    release_date DATE,
    rating DECIMAL (2, 1)
);


INSERT INTO movies (title, release_date, rating)
VALUES 
("Tenet ", "2020-09-03", 7.5),
("The Shawshank Redemption", "1994-10-14", 9.3),
("The Sound of Music", "1965-04-01", 8.0),
("West Side Story", "1961-10-18", 7.5),
("Forrest Gump", "1994-07-06", 8.8),
("The Silence of the Lambs", "1991-02-14", 8.6),
("Gladiator", "2000-05-05", 8.5),
("Jurassic Park", "1993-06-11", 8.1),
("Rebel Without a Cause", "1955-10-29", 7.7),
("Soul", "2020-12-25", 8.1);

-- Alter table by adding two new columns
ALTER TABLE movies
ADD first_name VARCHAR(220),
ADD last_name VARCHAR (220);

-- Update for all of the movies
UPDATE movies
SET first_name="Christopher", last_name="nolan"
WHERE id = 51;

UPDATE movies
SET first_name="Frank", last_name="Darabont"
WHERE id = 52;

UPDATE movies
SET first_name="Robert", last_name="Wise"
WHERE id = 53;

UPDATE movies
SET first_name=" Jerome", last_name="Robbins"
WHERE id = 54;

UPDATE movies
SET first_name="Robert", last_name="Zemeckis"
WHERE id = 55;

UPDATE movies
SET first_name="Jonathan", last_name="Demme"
WHERE id = 56;

UPDATE movies
SET first_name="Ridley", last_name="Scott"
WHERE id = 57;

UPDATE movies
SET first_name="Steven", last_name="Spielberg"
WHERE id = 58;

UPDATE movies
SET first_name="Nicholas", last_name="Ray"
WHERE id = 59;

UPDATE movies
SET first_name="Pete", last_name="Docter"
WHERE id = 60;

-- concatenate first name and last name to create full name
SELECT CONCAT(first_name, " ", last_name) AS full_name FROM movies;

-- Ordering by last name alpha
SELECT * FROM movies
ORDER BY last_name;

-- Deletes movies where the last name is between R-Z alphabetically
DELETE FROM movies
WHERE last_name BETWEEN "R" AND "Z";

-- Order by last name then display the first 3 entries
SELECT * FROM moviesmovies
ORDER BY last_name
LIMIT 3;

