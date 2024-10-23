-- Table creation
CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

-- Inserting sample data
INSERT INTO products (name, quantity, price)
VALUES ('Product A', 10, 19.99),
       ('Product B', 5, 9.99),
       ('Product C', 2, 14.99);

-- Retrieving all products
SELECT * FROM products;

-- Updating product quantity
UPDATE products
SET quantity = 8
WHERE id = 1;

-- Deleting a product
DELETE FROM products
WHERE id = 3;

-- Calculating total inventory value
SELECT SUM(quantity * price) AS total_value
FROM products;
