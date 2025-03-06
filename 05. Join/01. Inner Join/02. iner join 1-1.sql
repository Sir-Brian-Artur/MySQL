/* Muestra una tabla generada por la unión de la
tabla "users" con la tabla "dni", y muestra los
registros que tienen una relación con el "user_id". */
SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

-- "JOIN" es lo mismo que "INNER JOIN"
SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;

/* Igualmente podemos reordenar las tablas generadas. */
SELECT name, dni_number 
FROM users
JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;
