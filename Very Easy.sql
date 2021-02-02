CREATE DATABASE Very_Easy;

USE Very_Easy;

CREATE TABLE cars (
	id INT auto_increment PRIMARY KEY;
	make VARCHAR(10),
    model VARCHAR(10),
    year INT
);
 
SELECT * FROM very_easy;

INSERT INTO cars (make, model, year)
VALUES('Honda','Civic',2019),('Nissan', '370Z', 2008),('Honda','S2000', 1996);

