/*1 Book list database*/

CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER );

INSERT INTO books VALUES (1, "Sapiens", 5);
INSERT INTO books VALUES (2, "Undercover", 2);
INSERT INTO books VALUES (3, "History of Everything", 4);
SELECT * FROM books;