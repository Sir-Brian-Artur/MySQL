/* Empleamos "CHECK" para indicarle una condición a la hora
de crear un registro. */
CREATE TABLE persons5 (
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime,
	UNIQUE(id),
	PRIMARY KEY(id),
	CHECK(age>=18)
);