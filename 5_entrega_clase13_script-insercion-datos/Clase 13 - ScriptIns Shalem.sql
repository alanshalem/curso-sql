-- Insert data into "country" table
INSERT INTO country (id, name)
VALUES
  (1, 'USA'),
  (2, 'Canada'),
  (3, 'UK'),
  (4, 'Australia'),
  (5, 'Germany'),
  (6, 'France'),
  (7, 'Spain'),
  (8, 'Italy'),
  (9, 'China'),
  (10, 'India'),
  (11, 'Brazil'),
  (12, 'Russia'),
  (13, 'Japan'),
  (14, 'Mexico'),
  (15, 'Argentina'),
  (16, 'South Africa'),
  (17, 'Saudi Arabia'),
  (18, 'United Arab Emirates'),
  (19, 'South Korea'),
  (20, 'Netherlands');

INSERT INTO currency (id, currency_code)
VALUES
  (1, 'USD'),
  (2, 'CAD'),
  (3, 'GBP'),
  (4, 'AUD'),
  (5, 'EUR'),
  (6, 'JPY'),
  (7, 'MXN'),
  (8, 'ARS'),
  (9, 'ZAR'),
  (10, 'CNY'),
  (11, 'INR'),
  (12, 'BRL'),
  (13, 'RUB'),
  (14, 'CHF'),
  (15, 'SEK'),
  (16, 'NOK'),
  (17, 'AED'),
  (18, 'KRW'),
  (19, 'TRY'),
  (20, 'SGD');

-- Insert data into the "status" table
INSERT INTO status (id, code)
VALUES
  (1, 'in-progress'),
  (2, 'partially-filled'),
  (3, 'completely-filled'),
  (4, 'failed');

-- Insert data into the "stock" table
INSERT INTO stock (id, stock_code, stock_metadata)
VALUES
  (1, 'AAPL', 'Apple Inc.'),
  (2, 'GOOG', 'Alphabet Inc.'),
  (3, 'MSFT', 'Microsoft Corporation'),
  (4, 'AMZN', 'Amazon.com, Inc.'),
  (5, 'FB', 'Facebook, Inc.'),
  (6, 'TSLA', 'Tesla, Inc.'),
  (7, 'NVDA', 'NVIDIA Corporation'),
  (8, 'JPM', 'JPMorgan Chase & Co.'),
  (9, 'V', 'Visa Inc.'),
  (10, 'WMT', 'Walmart Inc.'),
  (11, 'JNJ', 'Johnson & Johnson'),
  (12, 'BABA', 'Alibaba Group Holding Limited'),
  (13, 'MA', 'Mastercard Incorporated'),
  (14, 'DIS', 'The Walt Disney Company'),
  (15, 'PG', 'Procter & Gamble Company'),
  (16, 'NKE', 'NIKE, Inc.'),
  (17, 'NFLX', 'Netflix, Inc.'),
  (18, 'CRM', 'salesforce.com, inc.'),
  (19, 'PYPL', 'PayPal Holdings, Inc.'),
  (20, 'INTC', 'Intel Corporation');

-- Insert data into the "user" table
INSERT INTO user (id, first_name, last_name, user_name, email, password, confirmation_code, datetime_registered, datetime_confirmed, mobile_no, country_id, account_balance)
VALUES
  (1, 'John', 'Doe', 'johndoe', 'johndoe@example.com', 'password123', 'ABC123', '2023-05-01 10:00:00', '2023-05-02 12:00:00', '1234567890', 1, 1000.00),
  (2, 'Jane', 'Smith', 'janesmith', 'janesmith@example.com', 'password456', 'DEF456', '2023-05-03 11:00:00', '2023-05-04 13:00:00', '9876543210', 2, 2500.00),
  (3, 'Michael', 'Johnson', 'mjohnson', 'mjohnson@example.com', 'password789', 'GHI789', '2023-05-05 12:00:00', '2023-05-06 14:00:00', '3456789012', 3, 500.00),
  (4, 'Emily', 'Brown', 'ebrown', 'ebrown@example.com', 'passwordabc', 'JKL123', '2023-05-07 13:00:00', '2023-05-08 15:00:00', '8901234567', 4, 1500.00),
  (5, 'David', 'Taylor', 'dtaylor', 'dtaylor@example.com', 'passworddef', 'MNO123', '2023-05-09 14:00:00', '2023-05-10 16:00:00', '2345678901', 5, 2000.00),
  (6, 'Sarah', 'Anderson', 'sanders', 'sanders@example.com', 'passwordeg', 'PQR456', '2023-05-11 15:00:00', '2023-05-12 17:00:00', '6789012345', 1, 3500.00),
  (7, 'Daniel', 'Wilson', 'dwilson', 'dwilson@example.com', 'passwordhij', 'STU123', '2023-05-13 16:00:00', '2023-05-14 18:00:00', '0123456789', 2, 1800.00),
  (8, 'Olivia', 'Lee', 'olee', 'olee@example.com', 'passwordklm', 'VWX456', '2023-05-15 17:00:00', '2023-05-16 19:00:00', '4567890123', 3, 2700.00),
  (9, 'Matthew', 'Harris', 'mharris', 'mharris@example.com', 'passwordnop', 'YZA123', '2023-05-17 18:00:00', '2023-05-18 20:00:00', '8901234567', 4, 1200.00),
  (10, 'Emma', 'Garcia', 'egarcia', 'egarcia@example.com', 'passwordqrs', 'BCD456', '2023-05-19 19:00:00', '2023-05-20 21:00:00', '2345678901', 5, 2200.00),
  (11, 'James', 'Thomas', 'jthomas', 'jthomas@example.com', 'passwordtuv', 'EFG123', '2023-05-21 20:00:00', '2023-05-22 22:00:00', '6789012345', 1, 3100.00),
  (12, 'Sophia', 'Lopez', 'slopez', 'slopez@example.com', 'passwordwxy', 'HIJ456', '2023-05-23 21:00:00', '2023-05-24 23:00:00', '0123456789', 2, 1600.00),
  (13, 'Benjamin', 'Clark', 'bclark', 'bclark@example.com', 'passwordzab', 'KLM123', '2023-05-25 22:00:00', '2023-05-26 00:00:00', '4567890123', 3, 2400.00),
  (14, 'Ava', 'Walker', 'awalker', 'awalker@example.com', 'passwordcde', 'NOP456', '2023-05-27 23:00:00', '2023-05-28 01:00:00', '8901234567', 4, 1300.00),
  (15, 'Ethan', 'Hill', 'ehill', 'ehill@example.com', 'passwordfgh', 'QRS123', '2023-05-29 00:00:00', '2023-05-30 02:00:00', '2345678901', 5, 1900.00),
  (16, 'Isabella', 'Young', 'iyoung', 'iyoung@example.com', 'passwordijk', 'TUV456', '2023-05-31 01:00:00', '2023-06-01 03:00:00', '6789012345', 1, 2800.00),
  (17, 'William', 'Hall', 'whall', 'whall@example.com', 'passwordlmn', 'WXY123', '2023-06-02 02:00:00', '2023-06-03 04:00:00', '0123456789', 2, 1400.00),
  (18, 'Mia', 'Morris', 'mmorris', 'mmorris@example.com', 'passwordopq', 'ZAB456', '2023-06-04 03:00:00', '2023-06-05 05:00:00', '4567890123', 3, 2300.00),
  (19, 'Alexander', 'Allen', 'aallen', 'aallen@example.com', 'passwordrst', 'CDE123', '2023-06-06 04:00:00', '2023-06-07 06:00:00', '8901234567', 4, 1100.00),
  (20, 'Sophie', 'Turner', 'sturner', 'sturner@example.com', 'passworduvw', 'FGH456', '2023-06-08 05:00:00', '2023-06-09 07:00:00', '2345678901', 5, 2600.00);

-- Insert data into the "portfolio" table
INSERT INTO portfolio (id, user_id, stock_id, stock_quantity)
VALUES
  (1, 1, 1, 10),
  (2, 1, 2, 5),
  (3, 1, 3, 8),
  (4, 1, 4, 3),
  (5, 1, 5, 12),
  (6, 1, 6, 15),
  (7, 1, 7, 6),
  (8, 1, 8, 9),
  (9, 1, 9, 7),
  (10, 1, 10, 4),
  (11, 2, 1, 20),
  (12, 2, 2, 10),
  (13, 2, 3, 15),
  (14, 2, 4, 6),
  (15, 2, 5, 8),
  (16, 2, 6, 4),
  (17, 2, 7, 12),
  (18, 2, 8, 9),
  (19, 2, 9, 5),
  (20, 2, 10, 18);

-- Insert data into the "price" table
INSERT INTO price (id, stock_id, currency_id, buy_price, sell_price, timestamp)
VALUES
  (1, 1, 1, 150.50, 155.20, '2023-06-01 09:30:00'),
  (2, 1, 2, 160.25, 165.10, '2023-06-02 09:30:00'),
  (3, 2, 1, 250.75, 255.80, '2023-06-01 09:30:00'),
  (4, 2, 2, 260.40, 265.90, '2023-06-02 09:30:00'),
  (5, 3, 1, 75.20, 80.10, '2023-06-01 09:30:00'),
  (6, 3, 2, 78.50, 82.25, '2023-06-02 09:30:00'),
  (7, 4, 1, 350.80, 355.60, '2023-06-01 09:30:00'),
  (8, 4, 2, 360.10, 365.80, '2023-06-02 09:30:00'),
  (9, 5, 1, 45.30, 50.25, '2023-06-01 09:30:00'),
  (10, 5, 2, 48.20, 52.10, '2023-06-02 09:30:00'),
  (11, 6, 1, 80.75, 85.80, '2023-06-01 09:30:00'),
  (12, 6, 2, 85.25, 90.10, '2023-06-02 09:30:00'),
  (13, 7, 1, 120.40, 125.60, '2023-06-01 09:30:00'),
  (14, 7, 2, 125.90, 130.40, '2023-06-02 09:30:00'),
  (15, 8, 1, 420.25, 425.90, '2023-06-01 09:30:00'),
  (16, 8, 2, 430.80, 435.60, '2023-06-02 09:30:00'),
  (17, 9, 1, 110.50, 115.25, '2023-06-01 09:30:00'),
  (18, 9, 2, 115.80, 120.10, '2023-06-02 09:30:00'),
  (19, 10, 1, 180.75, 185.80, '2023-06-01 09:30:00'),
  (20, 10, 2, 185.25, 190.10, '2023-06-02 09:30:00');

-- Insert data into the "order" table
INSERT INTO `order` (id, user_id, stock_id, quantity, price_per_unit, order_type, status_id)
VALUES
  (1, 1, 1, 10, 150, 'BUY', 1),
  (2, 2, 2, 5, 200, 'SELL', 2),
  (3, 3, 1, 8, 160, 'BUY', 1),
  (4, 4, 3, 12, 180, 'SELL', 1),
  (5, 5, 2, 15, 190, 'BUY', 2),
  (6, 6, 4, 20, 210, 'SELL', 1),
  (7, 7, 3, 4, 170, 'BUY', 2),
  (8, 8, 1, 6, 155, 'SELL', 2),
  (9, 9, 5, 10, 165, 'BUY', 1),
  (10, 10, 4, 8, 200, 'SELL', 1),
  (11, 1, 6, 6, 175, 'BUY', 1),
  (12, 2, 2, 4, 210, 'SELL', 2),
  (13, 3, 7, 12, 185, 'BUY', 1),
  (14, 4, 5, 10, 195, 'SELL', 2),
  (15, 5, 8, 9, 180, 'BUY', 1),
  (16, 6, 3, 7, 190, 'SELL', 1),
  (17, 7, 10, 5, 170, 'BUY', 2),
  (18, 8, 6, 6, 205, 'SELL', 1),
  (19, 9, 9, 15, 175, 'BUY', 1),
  (20, 10, 7, 12, 190, 'SELL', 2);

-- Insert data into the "matched_order" table
INSERT INTO matched_order (id, sale_quantity, sale_price, buyer_id, seller_id, timestamp)
VALUES
  (1, 5, 100.00, 1, 2, '2023-05-05 14:00:00'),
  (2, 3, 50.00, 2, 1, '2023-05-06 15:00:00'),
  (3, 8, 200.00, 3, 4, '2023-05-07 16:00:00'),
  (4, 6, 150.00, 4, 3, '2023-05-08 17:00:00'),
  (5, 10, 300.00, 5, 6, '2023-05-09 18:00:00'),
  (6, 12, 400.00, 6, 5, '2023-05-10 19:00:00'),
  (7, 4, 80.00, 7, 8, '2023-05-11 20:00:00'),
  (8, 6, 120.00, 8, 7, '2023-05-12 21:00:00'),
  (9, 15, 250.00, 9, 10, '2023-05-13 22:00:00'),
  (10, 12, 180.00, 10, 9, '2023-05-14 23:00:00'),
  (11, 7, 140.00, 1, 4, '2023-05-15 14:00:00'),
  (12, 5, 90.00, 2, 3, '2023-05-16 15:00:00'),
  (13, 9, 160.00, 3, 6, '2023-05-17 16:00:00'),
  (14, 11, 220.00, 4, 5, '2023-05-18 17:00:00'),
  (15, 3, 60.00, 5, 8, '2023-05-19 18:00:00'),
  (16, 7, 130.00, 6, 7, '2023-05-20 19:00:00'),
  (17, 6, 100.00, 7, 10, '2023-05-21 20:00:00'),
  (18, 9, 180.00, 8, 9, '2023-05-22 21:00:00'),
  (19, 14, 280.00, 9, 2, '2023-05-23 22:00:00'),
  (20, 10, 200.00, 10, 1, '2023-05-24 23:00:00');
