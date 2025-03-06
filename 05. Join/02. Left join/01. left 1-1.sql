/* A diferencia del "Inner" Join, el LEFT JOIN trae el
contenido de la Izquierda. Es decir, trae todos los registros
de la 1ª tabla, junto con los coincidente de la 2ª tabla.
*/
SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

/* Nos traemos sólo la columna "name" y la "dni_number". 
Vemos claramente como hay NOMBRES que no tienen DNI. */
SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;

/* Si cambiamos el orden de las tablas es como si hiciesemos
un "RIGHT JOIN". Vamos a mostrar el contenido de la 1ª tabla
"dni", junto alcoincidente con la 2ª tabla "users". */
SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;