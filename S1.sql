CREATE DATABASE IF NOT EXISTS lesson_1;
USE lesson_1;
DROP TABLE IF EXISTS Products;
CREATE TABLE Products
(
id INT PRIMARY KEY AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(20) NOT NULL,
ProductCount INT DEFAULT 0,
Price DECIMAL		
);
SELECT * FROM Products;
INSERT INTO Products (ProductName, Manufacturer, ProductCount, Price)
VALUE
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);
SELECT * FROM Products;
SELECT ProductName, Manufacturer, Price FROM Products
WHERE ProductCount > 2;
SELECT * FROM Products
WHERE Manufacturer = 'Samsung';
SELECT * FROM Products
WHERE ProductCount*Price > 100000 AND ProductCount*Price < 145000;
SELECT ProductName FROM Products
WHERE ProductName LIKE 'iPhone%';
SELECT ProductName FROM Products
WHERE ProductName LIKE 'Galaxy%';
SELECT ProductName FROM Products
WHERE ProductName LIKE '%8%';
SELECT ProductName FROM Products
WHERE ProductName RLIKE '[0-9]';