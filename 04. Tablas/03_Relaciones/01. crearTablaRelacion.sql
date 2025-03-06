/* Podemos nombrar las columnas internas de la tabla
como nos de la gana. Es cuando escribimos "REFERENCES"
que hay que especificar bien a qué columna y de qué tabla
vamos a traer. */
CREATE TABLE dni(
	dni_id int AUTO_INCREMENT,
	dni_number int NOT NULL,
	user_id int,
	PRIMARY KEY(dni_id),
	CONSTRAINT FK_users_id
		FOREIGN KEY(user_id) REFERENCES users(user_id)
);