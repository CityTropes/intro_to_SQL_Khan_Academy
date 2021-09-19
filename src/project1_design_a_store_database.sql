/*1 Design a store database*/

CREATE TABLE inventory (id INTEGER PRIMARY KEY, item TEXT, brand TEXT, price NUMERIC, amount INTEGER);
INSERT INTO inventory VALUES (1, "Bike1", "Coolbrand", 750, 4);
INSERT INTO inventory VALUES (2, "Bike2", "Lamebrand", 450, 2);
INSERT INTO inventory VALUES (3, "Bike3", "Alibaba", 24.99, 8);
INSERT INTO inventory VALUES (4, "Bike4", "Coolbrand", 1250, 2);
INSERT INTO inventory VALUES (5, "Bike5", "Lamebrand", 350, 5);
INSERT INTO inventory VALUES (6, "Bike6", "Alibaba", 34.99, 7);
INSERT INTO inventory VALUES (7, "Bike7", "Coolbrand", 990, 4);
INSERT INTO inventory VALUES (8, "Bike8", "Epicbrand", 3499, 2);
INSERT INTO inventory VALUES (9, "Bike9", "Coolbrand", 750, 4);
INSERT INTO inventory VALUES (10, "Bike10", "Lamebrand", 450, 2);
INSERT INTO inventory VALUES (11, "Bike11", "Alibaba", 24.99, 8);
INSERT INTO inventory VALUES (12, "Bike12", "Coolbrand", 1250, 2);
INSERT INTO inventory VALUES (13, "Bike13", "Lamebrand", 350, 5);
INSERT INTO inventory VALUES (14, "Bike14", "Alibaba", 34.99, 7);
INSERT INTO inventory VALUES (15, "Bike15", "Coolbrand", 990, 4);
INSERT INTO inventory VALUES (16, "Bike16", "Epicbrand", 4499, 1);

SELECT * FROM inventory WHERE price > 500 ORDER BY brand;
SELECT brand, SUM(amount) FROM inventory GROUP BY brand;

/*
Query results
id 	item 	brand 	price 	amount
1 	Bike1 	Coolbrand 	750 	4
4 	Bike4 	Coolbrand 	1250 	2
7 	Bike7 	Coolbrand 	990 	4
9 	Bike9 	Coolbrand 	750 	4
12 	Bike12 	Coolbrand 	1250 	2
15 	Bike15 	Coolbrand 	990 	4
8 	Bike8 	Epicbrand 	3499 	2
16 	Bike16 	Epicbrand 	4499 	1

brand 	SUM(amount)
Alibaba 	30
Coolbrand 	20
Epicbrand 	3
Lamebrand 	14
*/