-- 1º. Crea una tabla de historial para usar en el ejemplo
CREATE TABLE `hello_mysql`.`email_history` (
`email_history_id` INT NOT NULL AUTO_INCREMENT,
`user_id` INT NOT NULL,
`email` VARCHAR(100) NULL,
PRIMARY KEY (`email_history_id`),
UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);

/* Crea un trigger llamado "tg_email" que guarda el email 
previo en la tabla "email_history" siempre que se actualiza 
el campo "email" en la tabla "users" */
CREATE TRIGGER tg_email
AFTER UPDATE 
ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSER INTO email_history(user_id, email) VALUES (OLD.user_id, OLD.email);
    END IF;
END

/* Delimitar la sentencia SQL con los "DELIMITER //" y 
"// DELIMITER ;" */

UPDATE users SET email = 'mouredev@gmail.com' where user_id = 1