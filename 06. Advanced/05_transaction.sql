/* Inicia una nueva transacción. Desde este punto, 
todas las modificaciones realizadas en la base de 
datos son temporales y solo son visibles dentro de 
esta transacción. */
START TRANSACTION 
-- o -- 
BEGIN 

/* Confirma la transacción actual, haciendo que sus 
cambios sean permanentes. */
COMMIT 

/* Deshace las operaciones realizadas en una transacción, 
revirtiendo la base de datos al estado en que se encontraba 
antes de iniciar la transacción. */
ROLLBACK

/* Deshabilita o habilita la función de confirmación automática predeterminada para la sesión actual. */
SET autocommit 

-- - - - - - - x - x - x - x - x - - - - - --

START TRANSACTION
    [transaction_characteristic [, transaction_characteristic] ...]

transaction_characteristic: {
    WITH CONSISTENT SNAPSHOT
  | READ WRITE
  | READ ONLY
}

BEGIN [WORK]
COMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
ROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]
SET autocommit = {0 | 1}


-- - x - x - x - x - x - x - x - x - x - x - x --

START TRANSACTION;
SELECT @A:=SUM(salary) FROM table1 WHERE type=1;
UPDATE table2 SET summary=@A WHERE type=1;
COMMIT;