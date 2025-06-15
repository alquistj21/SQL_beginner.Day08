-- сеанс №1
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- сеанс №2
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- сеанс №1
SELECT SUM(rating) FROM pizzeria;
-- сеанс №2
INSERT INTO pizzeria VALUES(10, 'Kazan Pizza', 5.0);
COMMIT;
-- сеанс №1
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;
-- сеанс №2
SELECT SUM(rating) FROM pizzeria;