-- Stored Procedure para ordenar una tabla
DELIMITER //

CREATE PROCEDURE sp_order_table(
  IN table_name VARCHAR(64),
  IN order_by_column VARCHAR(64),
  IN sort_order VARCHAR(10)
)
BEGIN
  SET @query = CONCAT('SELECT * FROM ', table_name, ' ORDER BY ', order_by_column, ' ', sort_order);
  PREPARE stmt FROM @query;
  EXECUTE stmt;
  DEALLOCATE PREPARE stmt;
END//

-- Ejemplo de uso
CALL sp_order_table('user', 'first_name', 'ASC');

DELIMITER ;

-- Stored Procedure para insertar o eliminar registros
DELIMITER //

CREATE PROCEDURE sp_insert_or_delete_record(
  IN action INT,
  IN record_id INT
)
BEGIN
  IF action = 1 THEN
    -- Insertar registro
    INSERT INTO table_name (column1, column2, column3)
    VALUES (value1, value2, value3);
  ELSEIF action = 2 THEN
    -- Eliminar registro
    DELETE FROM table_name WHERE id = record_id;
  END IF;
END//

-- Ejemplo de uso
CALL sp_insert_or_delete_record(1, null);
CALL sp_insert_or_delete_record(2, 1);

DELIMITER ;

