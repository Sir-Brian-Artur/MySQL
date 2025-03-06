/* "UNIQUE" se usa para que dos registros no tengan 
el mismo valor en esa columna.*/
CREATE TABLE persons3 (
	id int NOT NULL,
	name varchar(100) NOT NULL,
	age int,
	email varchar(50),
	created datetime,
	UNIQUE(id)
);