/* Se definen casi igual que con los disparadores.
Sólo que en este caso tenemos que colocar un paréntesis,
como si fuese una "función" de JavaScript. */
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

/* Invocar el "Procedimiento Almacenado" (NO PARÉTESIS) */
CALL p_all_users

/* Procedimiento Alamacenado con PARÁMETRO*/
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- Invocar Procedure con ese "30" para su PARÁMETRO
CALL p_age_users(30)

-- Eliminar Procedure
DROP PROCEDURE p_age_users;