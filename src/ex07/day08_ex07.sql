-- сеанс №1
BEGIN;
-- сеанс №2
BEGIN;
-- сеанс №1
UPDATE pizzeria SET rating = 5.0 WHERE id = 1;
-- сеанс №2
UPDATE pizzeria SET rating = 4.0 WHERE id = 2;
-- сеанс №1
UPDATE pizzeria SET rating = 3.0 WHERE id = 2;
-- сеанс №2
UPDATE pizzeria SET rating = 2.0 WHERE id = 1;
-- сеанс №1
COMMIT;
-- сеанс №2
COMMIT;