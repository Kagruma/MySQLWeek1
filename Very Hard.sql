
USE Very_Easy;

CREATE TABLE cars (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	make VARCHAR(20),
    model VARCHAR(20),
    year INT
);
 
SELECT * FROM cars;

-- initial insert
INSERT INTO cars (make, model, year)
VALUES
('Honda','Civic', 2019),
('Nissan', '370Z', 2008),
('Honda','S2000', 1996);


-- second insert
INSERT INTO cars (make, model, year)
VALUES
('Toyota' ,'AE86', 1999),
('Subaru','Impreza', 2018),
('Jeep','Wrangler', 2020);
    
    
-- Here we're adding the price column and color column
ALTER TABLE cars
ADD price INT,
ADD color VARCHAR(50);


-- Then, we're adding the values of price and color for each car
-- Update for all cars with price and color values
UPDATE cars 
SET price = 666666, color = "Black"
WHERE id = 1;

UPDATE cars 
SET price = 666222, color = "Blue"
WHERE id = 2;

UPDATE cars 
SET price = 666111, color = "Green"
WHERE id = 3;

UPDATE cars 
SET price = 666000, color = "Silver"
WHERE id = 4;

UPDATE cars 
SET price = 666, color = "Black"
WHERE id = 5;

UPDATE cars 
SET price = 666666, color = "Blue"
WHERE id = 6;

-- JOIN make and model under one column name
SELECT CONCAT(make, " ", model) AS make_and_model
FROM cars;

-- Display all car makes and also shows if they repeat or not
SELECT make AS Make, COUNT(make) AS Matches 
FROM cars 
GROUP BY make;
INSERT INTO cars (make, model, year) VALUES ('Toyota' 'AE86', 1999), ('Subaru','Impreza', 2018), ('Jeep','Wrangler', 2020)
