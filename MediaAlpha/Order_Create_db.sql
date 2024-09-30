DROP DATABASE IF EXISTS `Commerce`;
CREATE DATABASE `Commerce`;
USE `Commerce`;


CREATE TABLE orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50),
  price INT,
  user_id INT
);


INSERT INTO orders (id, name, price, user_id)
VALUES
(1, 'Leslie', 500, 44),
(2, 'Tom', 30000, 36),
(3, 'Tom', 25000, 36),
(4, 'April', 23999, 44),
(5, 'Jerry', 7800, 2),
(6, 'Donna', 365, 2),
(7, 'Ann', 10000, 2),
(8, 'Chris', 20, 1),
(9, 'Ben', 1000000, 56),
(10, 'Andy', 6752, 38),
(11, 'Mark', 3846, 40),
(12, 'Craig', 3551, 38);

