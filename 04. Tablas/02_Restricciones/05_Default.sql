/* En el momento de crear una tabla, le podemos indicar 
un criterio, a la hora de guardar el registro.
En este caso le estamos indicando que, de forma predeterminada
agregue la fecha y hora altuales si no se le incorpora
ninguna. */
CREATE TABLE persons6 (
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime DEFAULT CURRENT_TIMESTAMP(),
	UNIQUE(id),
	PRIMARY KEY(id),
	CHECK(age>=18)
);