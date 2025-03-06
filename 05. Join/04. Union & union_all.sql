/* Esta es una forma de unir "todo" el contenido de 2 tablas
distintas. Aunque para ello, los nombres de las columnas
tienen que ser iguales */
SELECT age 
FROM teachers
UNION
SELECT age 
FROM students;

-- UNION elimina duplicados
SELECT age 
FROM teachers
UNION ALL
SELECT age 
FROM students;

-- Obtiene todos los id de usuarios de las tablas dni y usuarios (exista o no relación)
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- Obtiene todos los datos de las tablas dni y usuarios (exista o no relación)
SELECT *
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION
SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

-- UNION ALL mantiene duplicados