-- сеанс №1
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- сеанс №2
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- сеанс №1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- сеанс №2
UPDATE pizzeria SET rating = 3.0 WHERE name = 'Pizza Hut';
COMMIT;
-- сеанс №1
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
COMMIT;
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- сеанс №2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';