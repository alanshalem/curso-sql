-- Drop the database if it exists
DROP DATABASE IF EXISTS InvestingPlatformDB;

-- Create the database
CREATE DATABASE InvestingPlatformDB;

-- Switch to the newly created database
USE InvestingPlatformDB;

-- Create the "country" table
CREATE TABLE country (
  id INT PRIMARY KEY NOT NULL,
  name VARCHAR(45) NOT NULL
);

-- Create the "user" table
CREATE TABLE user (
  id INT PRIMARY KEY NOT NULL,
  first_name VARCHAR(64) NOT NULL,
  last_name VARCHAR(64) NOT NULL,
  user_name VARCHAR(64) NOT NULL,
  email VARCHAR(320) NOT NULL,
  password VARCHAR(64) NOT NULL,
  confirmation_code VARCHAR(128) NOT NULL,
  datetime_registered DATETIME NOT NULL,
  datetime_confirmed DATETIME NOT NULL,
  mobile_no VARCHAR(45) NOT NULL,
  country_id INT NOT NULL,
  account_balance DECIMAL NOT NULL,
  FOREIGN KEY (country_id) REFERENCES country(id)
);

-- Create the "currency" table
CREATE TABLE currency (
  id INT PRIMARY KEY NOT NULL,
  currency_code VARCHAR(45) NOT NULL
);

-- Create the "matched_order" table
CREATE TABLE matched_order (
  id INT PRIMARY KEY NOT NULL,
  sale_quantity INT NOT NULL,
  sale_price DECIMAL NOT NULL,
  buyer_id INT NOT NULL,
  seller_id INT NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  FOREIGN KEY (buyer_id) REFERENCES user(id),
  FOREIGN KEY (seller_id) REFERENCES user(id)
);

-- Create the "stock" table
CREATE TABLE stock (
  id INT PRIMARY KEY NOT NULL,
  stock_code VARCHAR(45) NOT NULL,
  stock_metadata VARCHAR(255) NOT NULL
);

-- Create the "status" table
CREATE TABLE status (
  id INT PRIMARY KEY NOT NULL,
  code VARCHAR(45) NOT NULL
);

-- Create the "order" table
-- "order" is a reserved keyword in SQL. To resolve this, you can enclose "order" within backticks (`) to make it a valid identifier. 
CREATE TABLE `order` (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  stock_id INT NOT NULL,
  quantity INT NOT NULL,
  price_per_unit INT NOT NULL,
  order_type VARCHAR(10) NOT NULL,
  status_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (stock_id) REFERENCES stock(id),
  FOREIGN KEY (status_id) REFERENCES status(id)
);
-- Create the "portfolio" table
CREATE TABLE portfolio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  stock_id INT NOT NULL,
  stock_quantity INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (stock_id) REFERENCES stock(id)
);

-- Create the "price" table
CREATE TABLE price (
  id INT AUTO_INCREMENT PRIMARY KEY,
  stock_id INT NOT NULL,
  currency_id INT NOT NULL,
  buy_price DECIMAL(10, 2) NOT NULL,
  sell_price DECIMAL(10, 2) NOT NULL,
  timestamp TIMESTAMP NOT NULL,
  FOREIGN KEY (stock_id) REFERENCES stock(id),
  FOREIGN KEY (currency_id) REFERENCES currency(id)
);