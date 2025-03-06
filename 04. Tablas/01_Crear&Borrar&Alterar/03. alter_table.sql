-- Añadir columna
ALTER TABLE persons8
ADD surname varchar(150);

-- Renombrar columna
ALTER TABLE persons8
RENAME COLUMN surname TO description;

-- Modificar columna
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

-- Eliminiar columna
ALTER TABLE persons8
DROP COLUMN description;
