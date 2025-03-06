/* "IFNULL" está para darle un valor distinto a NULL 
a los resultados de una tabla. */
SELECT
IFNULL(age, 0) AS age
from USERS;

-- IFNULL ( columna , valor )

SELECT
IFNULL(age, 3) AS "no nulo"
from USERS;