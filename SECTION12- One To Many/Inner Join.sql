CREATE TABLE customers(id INT AUTO_INCREMENT PRIMARY KEY,first_name VARCHAR(100),last_name VARCHAR(100), VARCHAR(100)
);

CREATE TABLE orders(id   INT AUTO_INCREMENT PRIMARY KEY,
order_date DATE,amount DECIMAL(8,2),customer_id INT,FOREIGN KEY(customer_id) REFERENCES customers(id)
);
mysql> select * from customers;
-- +----+------------+-----------+------------------+
-- | id | first_name | last_name | email            |
-- +----+------------+-----------+------------------+
-- |  1 | Boy        | George    | george@gmail.com |
-- |  2 | George     | Michael   | gm@gmail.com     |
-- |  3 | David      | Bowie     | david@gmail.com  |
-- |  4 | Blue       | Steele    | blue@gmail.com   |
-- |  5 | Bette      | Davis     | bette@aol.com    |
-- +----+------------+-----------+------------------+

mysql> select * from orders;
-- +----+------------+--------+-------------+
-- | id | order_date | amount | customer_id |
-- +----+------------+--------+-------------+
-- |  1 | 2016-02-10 |  99.99 |           1 |
-- |  2 | 2017-11-11 |  35.50 |           1 |
-- |  3 | 2014-12-12 | 800.67 |           2 |
-- |  4 | 2015-01-03 |  12.50 |           2 |
-- |  5 | 1999-04-11 | 450.25 |           5 |
-- +----+------------+--------+-------------+

-- i want to see customer names along with orders
-- IMPLICIT INNER JOIN
SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id;
+----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+


SELECT first_name, last_name , order_date, amount
FROM customers, orders WHERE customers.id = orders.customer_id;
-- +------------+-----------+------------+--------+
-- | first_name | last_name | order_date | amount |
-- +------------+-----------+------------+--------+
-- | Boy        | George    | 2016-02-10 |  99.99 |
-- | Boy        | George    | 2017-11-11 |  35.50 |
-- | George     | Michael   | 2014-12-12 | 800.67 |
-- | George     | Michael   | 2015-01-03 |  12.50 |
-- | Bette      | Davis     | 1999-04-11 | 450.25 |
-- +------------+-----------+------------+--------+

-- EXPLICIT INNER JOIN
SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    -- +----+------------+-----------+------------------+----+------------+--------+-------------+
    -- | id | first_name | last_name | email            | id | order_date | amount | customer_id |
    -- +----+------------+-----------+------------------+----+------------+--------+-------------+
    -- |  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
    -- |  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
    -- |  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
    -- |  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
    -- |  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
    -- +----+------------+-----------+------------------+----+------------+--------+-------------+
    -- 5 rows in set (0.00 sec)

SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;

    -- +------------+-----------+------------+--------+
    -- | first_name | last_name | order_date | amount |
    -- +------------+-----------+------------+--------+
    -- | Boy        | George    | 2016-02-10 |  99.99 |
    -- | Boy        | George    | 2017-11-11 |  35.50 |
    -- | George     | Michael   | 2014-12-12 | 800.67 |
    -- | George     | Michael   | 2015-01-03 |  12.50 |
    -- | Bette      | Davis     | 1999-04-11 | 450.25 |

    SELECT first_name, last_name, order_date, amount
    FROM orders
    JOIN customers
        ON customers.id = orders.customer_id;

  produces same output...
