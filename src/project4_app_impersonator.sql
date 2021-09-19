/*4 App impersonator */

/* What does the app's SQL look like? 
-database to store player stats*/

CREATE TABLE players (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    character_type TEXT,
    points INTEGER,
    health INTEGER);

INSERT INTO players (name, character_type, points, health) VALUES ("Alma", "Priest", 535, 90);
INSERT INTO players (name, character_type, points, health) VALUES ("Helena", "Mage", 445, 95);
INSERT INTO players (name, character_type, points, health) VALUES ("Carlijn", "Tank", 335, 70);
INSERT INTO players (name, character_type, points, health) VALUES ("Marina", "Hunter", 775, 80);
INSERT INTO players (name, character_type, points, health) VALUES ("Jan", "Warlock", 995, 110);

SELECT*FROM players;

UPDATE players set name = "CityTropes"
WHERE name = "Jan";

SELECT*FROM players;

DELETE FROM players
WHERE id = 4;

SELECT*FROM players;