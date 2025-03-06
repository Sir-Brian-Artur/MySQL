/* Creamos la vista como la seleción de esas 2 columnas;
de la tabla "users". */
CREATE VIEW v_age_users AS
SELECT name, age
FROM users
WHERE age >= 18;

/* Cada vez que hagamos una petión de 
esta vista, nos devolverá una "tabla" con los valores 
indicdos. */
SELECT * FROM v_adult_users;

-- Eliminar vista
DROP VIEW v_adult_users;