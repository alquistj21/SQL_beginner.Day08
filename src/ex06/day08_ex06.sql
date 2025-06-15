-- сеанс №1
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- сеанс №2
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- сеанс №1
SELECT SUM(rating) FROM pizzeria;
-- сеанс №2
INSERT INTO pizzeria VALUES(11, 'Kazan Pizza 2', 4.0);
COMMIT;
-- сеанс №1
SELECT SUM(rating) FROM pizzeria;
COMMIT;
SELECT SUM(rating) FROM pizzeria;
-- сеанс №2
SELECT SUM(rating) FROM pizzeria;