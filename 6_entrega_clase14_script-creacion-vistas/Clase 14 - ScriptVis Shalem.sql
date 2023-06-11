-- Create a view to display user information along with the country name
CREATE VIEW vw_user_country AS
SELECT u.id, u.first_name, u.last_name, u.email, c.name AS country_name
FROM user u
JOIN country c ON u.country_id = c.id;

-- Create a view to display matched orders with buyer and seller information
CREATE VIEW vw_matched_orders AS
SELECT mo.id, mo.sale_quantity, mo.sale_price,
       bu.user_name AS buyer_username, se.user_name AS seller_username
FROM matched_order mo
JOIN user bu ON mo.buyer_id = bu.id
JOIN user se ON mo.seller_id = se.id;

-- Create a view to display the portfolio of each user with stock details
CREATE VIEW vw_user_portfolio AS
SELECT p.id, u.user_name, s.stock_code, s.stock_metadata, p.stock_quantity
FROM portfolio p
JOIN user u ON p.user_id = u.id
JOIN stock s ON p.stock_id = s.id;

-- Create a view to display the latest prices of each stock with currency details
CREATE VIEW vw_latest_prices AS
SELECT p.stock_id, s.stock_code, s.stock_metadata, c.currency_code,
       p.buy_price, p.sell_price, p.timestamp
FROM price p
JOIN stock s ON p.stock_id = s.id
JOIN currency c ON p.currency_id = c.id
WHERE p.timestamp = (
  SELECT MAX(timestamp)
  FROM price
  WHERE stock_id = p.stock_id
);

-- Create a view to display the order history of each user with status details
CREATE VIEW vw_user_order_history AS
SELECT o.id, u.user_name, s.stock_code, s.stock_metadata,
       o.quantity, o.price_per_unit, o.order_type, st.code AS status_code
FROM `order` o
JOIN user u ON o.user_id = u.id
JOIN stock s ON o.stock_id = s.id
JOIN status st ON o.status_id = st.id;
