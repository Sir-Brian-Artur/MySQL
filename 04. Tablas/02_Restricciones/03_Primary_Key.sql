/* "PRIMARY KEY" sirve para indicar que es el indicador 
principal de esa tabla. */
CREATE TABLE persons4 (
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime,
	UNIQUE(email),
	PRIMARY KEY(id)
);

/* Con "UNIQUE" sólo estamos asegurándonos de que los valores
o se repitan entre sí. Con el "PRIMARY KEY" estamos diciendo
que la columna tiene un valor especial. Todo ello para establecer
relacionarse con otras tablas. */