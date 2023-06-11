-- Tabla de registro para la tabla "orders"
CREATE TABLE orders_log (
  log_id INT AUTO_INCREMENT,
  user_id INT,
  operation_date DATE,
  operation_time TIME,
  operation_description VARCHAR(255),
  PRIMARY KEY (log_id)
);

-- Tabla de registro para la tabla "matched_orders"
CREATE TABLE matched_orders_log (
  log_id INT AUTO_INCREMENT,
  user_id INT,
  operation_date DATE,
  operation_time TIME,
  operation_description VARCHAR(255),
  PRIMARY KEY (log_id)
);

-- Trigger para la tabla "orders" (BEFORE INSERT)
DELIMITER //

CREATE TRIGGER orders_before_insert_trigger
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
  DECLARE current_user_id INT;
  SET current_user_id = (SELECT user_id FROM logged_user_table); -- Obtener el ID del usuario actualmente logueado
  
  -- Registrar la operación en el log
  INSERT INTO orders_log (user_id, operation_date, operation_time, operation_description)
  VALUES (current_user_id, CURDATE(), CURTIME(), 'Inserting new order');
END//

DELIMITER ;

-- Trigger para la tabla "matched_orders" (AFTER DELETE)
DELIMITER //

CREATE TRIGGER matched_orders_after_delete_trigger
AFTER DELETE ON matched_orders
FOR EACH ROW
BEGIN
  DECLARE current_user_id INT;
  SET current_user_id = (SELECT user_id FROM logged_user_table); -- Obtener el ID del usuario actualmente logueado
  
  -- Registrar la operación en el log
  INSERT INTO matched_orders_log (user_id, operation_date, operation_time, operation_description)
  VALUES (current_user_id, CURDATE(), CURTIME(), 'Deleting matched order');
END//

DELIMITER ;

