/* Es el comando que se encarga de realiar Insertos 
dentro de la tabla. */
INSERT INTO users (user_id, name, surname) 
VALUES (3, 'Maria', 'López');

/* Tiene que haber la misma cantidad de columnas que 
de valores.*/
INSERT INTO users (name, surname) VALUES ('Paco', 'Pérez');