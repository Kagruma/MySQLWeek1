CREATE DATABASE Easy;

USE Easy;

CREATE TABLE books (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR (500),
    publish_date DATE,
    author_firstName VARCHAR (20),
    author_lastName VARCHAR (20)
);

INSERT INTO books (title, publish_date, author_firstName, author_lastName)
VALUES ("Accelerate: The Science of Lean Software and DevOps", "2018-27-03", "Nicole", "Forsgren"), ("Don't Make Me Think", "2013-01-12", "Steve", "Krug"), ("A Philosophy of Software Design", "2018-04-06", "John", "Ousterhout");


-- Deletes 
DELETE FROM books
ORDER BY publish_date
LIMIT 1;

-- Returns count for the number of books 
SELECT COUNT(*) AS Sum
FROM books;



