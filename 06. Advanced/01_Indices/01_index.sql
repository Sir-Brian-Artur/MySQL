/* 
CREAR UN ÍNDICE:
    - "CREATE INDEX"
    - idx_columna
    - ON tabla(columna);
*/
-- INDICE COMÚN
CREATE INDEX idx_name ON users(name);

-- INDICE UNICO
CREATE UNIQUE INDEX idx_name ON users(name);

/* INDICE COMPUESTO : 2 o más columnas perenecen al mismo índice.
De esta forma no vamos a poder repetir la misma dupla. */
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- Elimina el índice
DROP INDEX idx_name ON users;

/* Sirve para obtener una lectura más ráida a la hora de buscar esos valores de la o las columnas indexadas. Los índices ocupan espacio en memoria, por lo que se debe limitar su uso a sólo lo esencial. A la hora de la lectura acelera su proceso, pero al mismo tiempo retrasa la escritura en la base de datos. */
SELECT * FROM users WHERE name = "Lucía";

