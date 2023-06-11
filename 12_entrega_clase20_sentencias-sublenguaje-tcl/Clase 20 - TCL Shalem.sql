-- Comenzar transacción
START TRANSACTION;

-- Verificar si la tabla tiene registros
IF EXISTS (SELECT * FROM primera_tabla) THEN
  -- Eliminar algunos registros importantes (reemplazar con sentencias DELETE apropiadas)
  DELETE FROM primera_tabla WHERE columna = 'valor';
  DELETE FROM primera_tabla WHERE columna = 'valor';
  -- Comentar: Eliminación de registros importantes

  -- Comentar: -- ROLLBACK; (descomentar para realizar rollback en caso de necesidad)

  -- Comentar: -- COMMIT; (descomentar para realizar commit en caso de necesidad)
ELSE
  -- Insertar nuevos registros importantes (reemplazar con sentencias INSERT apropiadas)
  INSERT INTO primera_tabla (columna1, columna2) VALUES ('valor1', 'valor2');
  INSERT INTO primera_tabla (columna1, columna2) VALUES ('valor1', 'valor2');
  -- Comentar: Inserción de registros importantes

  -- Comentar: -- ROLLBACK; (descomentar para realizar rollback en caso de necesidad)

  -- Comentar: -- COMMIT; (descomentar para realizar commit en caso de necesidad)
END IF;

-- Realizar rollback o commit según sea necesario
-- ROLLBACK;
-- COMMIT;


-- Comenzar transacción
START TRANSACTION;

-- Insertar nuevos registros
INSERT INTO segunda_tabla (columna1, columna2) VALUES ('valor1', 'valor2');
INSERT INTO segunda_tabla (columna1, columna2) VALUES ('valor1', 'valor2');
INSERT INTO segunda_tabla (columna1, columna2) VALUES ('valor1', 'valor2');

-- Savepoint después de la inserción del registro #4
SAVEPOINT savepoint_4;

INSERT INTO segunda_tabla (columna1, columna2) VALUES ('valor1', 'valor2');
INSERT INTO segunda_tabla (columna1, columna2) VALUES ('valor1', 'valor2');

-- Savepoint después de la inserción del registro #8
SAVEPOINT savepoint_8;

-- Comentar: -- ROLLBACK TO SAVEPOINT savepoint_4; (descomentar para eliminar los primeros 4 registros insertados)

-- Comentar: -- COMMIT; (descomentar para realizar commit en caso de necesidad)

-- Realizar rollback o commit según sea necesario
-- ROLLBACK;
-- COMMIT;

