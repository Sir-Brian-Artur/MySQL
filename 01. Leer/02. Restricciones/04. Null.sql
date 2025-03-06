/* "NULL" lo empleamos para encontrar registros con campos
con valores NULOS/VACÍOS */

-- 1. "IS NULL" valor nulo
SELECT * FROM users WHERE email IS NULL;

-- 2. "IS NOT NULL" valor que no es nulo
SELECT * FROM users WHERE email IS NOT NULL;