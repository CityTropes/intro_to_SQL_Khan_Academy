/*3 Famous People*/

/*data via https://derijkstebelgen.be/de-lijst */

CREATE TABLE rijkste_belgen (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fullname TEXT,
    age INTEGER,
    inplanting TEXT);
    
INSERT INTO rijkste_belgen (fullname, age, inplanting) VALUES ("Eric Wittouck", 72, "Monaco");
INSERT INTO rijkste_belgen (fullname, age, inplanting) VALUES ("Alexandre Van Damme", 59, "Brussel en Zwitserland");
INSERT INTO rijkste_belgen (fullname, age, inplanting) VALUES ("Werner de Spoelberch", 88, "Vlaams-Brabant");
INSERT INTO rijkste_belgen (fullname, age, inplanting) VALUES ("Jef Colruyt", 62, "Halle");
INSERT INTO rijkste_belgen (fullname, age, inplanting) VALUES ("Gérald Frère", 70, "Charleroi");

CREATE table rijkdom (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    rijkste_belgen_id INTEGER,
    nettowaarde INTEGER,
    inkomstenbron TEXT);
    
INSERT INTO rijkdom (rijkste_belgen_id, nettowaarde, inkomstenbron) VALUES (1, 10830520000, "Weight Watchers ");
INSERT INTO rijkdom (rijkste_belgen_id, nettowaarde, inkomstenbron) VALUES (2, 10541360000, "AB Inbev");
INSERT INTO rijkdom (rijkste_belgen_id, nettowaarde, inkomstenbron) VALUES (3, 6846230000, "AB Inbev: Stella en Jupiler ");
INSERT INTO rijkdom (rijkste_belgen_id, nettowaarde, inkomstenbron) VALUES (4, 3744000000, "Colruyt");
INSERT INTO rijkdom (rijkste_belgen_id, nettowaarde, inkomstenbron) VALUES (5, 3466705000, "Ondernemer Frère");

SELECT * FROM rijkste_belgen;
SELECT * FROM rijkdom;

/*Return rijkdom per rijke fatcat*/
SELECT rijkste_belgen.fullname, rijkdom.nettowaarde, rijkdom.inkomstenbron
FROM rijkste_belgen
JOIN rijkdom
ON rijkste_belgen.id = rijkdom.rijkste_belgen_id;
