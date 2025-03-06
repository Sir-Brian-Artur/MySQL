/* El concepto es casi el mismo que el de LEFT JOIN. 
Lo que pasa es que ahora se queda con el contenido 
NO COINCIDENTE de la derecha(2º). */
SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;
/* En los registros donde no tiene valores, porque no
son coincidentes, los rellena con NULL. */