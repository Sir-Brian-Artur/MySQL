-- "companies" y "users"  (Relación 1:N)
INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');      -- Insertar valores para 
INSERT INTO companies (name) VALUES ('Google');     -- nuevos registros

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;  -- Actualizar registros
UPDATE users SET company_id = 3 WHERE user_id = 4;  -- existentes
UPDATE users SET company_id = 1 WHERE user_id = 7;