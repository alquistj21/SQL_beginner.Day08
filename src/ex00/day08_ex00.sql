-- сеанс №1
BEGIN;
UPDATE pizzeria SET rating = 5 WHERE name = 'Pizza Hut';
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- сеанс №2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';
-- -- сеанс №1
COMMIT;
-- сеанс №2
SELECT * FROM pizzeria WHERE name = 'Pizza Hut';