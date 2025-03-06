USE hello_mysql;

DELIMITER $$
$$
CREATE TRIGGER tg_email
AFTER INSERT
ON users FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
		VALUES (OLD.user_id, OLD.email);
	END IF;
END;$$
DELIMITER ;
USE mysql;
