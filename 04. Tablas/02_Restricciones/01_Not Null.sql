/* Nos prohibe ingresar un campo NULL en la columna. */
CREATE TABLE persons2 (
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime
);