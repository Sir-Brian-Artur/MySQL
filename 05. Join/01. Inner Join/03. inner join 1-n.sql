/* Muestra los registros de los usuarios que tienen 
empresa. */
SELECT * 
FROM users
JOIN companies
ON users.company_id = companies.company_id;

/* Muestra los registros de las empresas que tienen
usuarios */
SELECT * 
FROM companies
JOIN users
ON users.company_id = companies.company_id;

/* Muestra el nombre de las empresas y el nombre de 
sus usuarios. Ya que estamos especificando que sólo
nos devuelva esas 2 columnas de toda la tabla generada. */
SELECT companies.name, users.name 
FROM companies
JOIN users
ON companies.company_id = users.company_id;