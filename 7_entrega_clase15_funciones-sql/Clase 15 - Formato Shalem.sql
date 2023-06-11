-- Función que hace uso interno de funciones propias de SQL
CREATE FUNCTION calculate_total_price(quantity INT, price DECIMAL) RETURNS DECIMAL
BEGIN
  DECLARE total DECIMAL;
  SET total = quantity * price;
  RETURN total;
END;

-- Función que obtiene valores de otras tablas sin usar JOIN o subconsulta
CREATE FUNCTION get_user_country(user_id INT) RETURNS VARCHAR(45)
BEGIN
  DECLARE country_name VARCHAR(45);
  SELECT name INTO country_name
  FROM country
  WHERE id = (SELECT country_id FROM user WHERE id = user_id);
  RETURN country_name;
END;
