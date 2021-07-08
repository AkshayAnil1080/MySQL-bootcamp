CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT
);


-- INSERTING NEW DATA (no longer bound by foreign key constraint)

INSERT INTO customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);

SELECT * FROM customers;
SELECT * FROM orders;
-- possible this new insertion bcoz we got rid of the fk constraint
INSERT INTO orders (order_date, amount, customer_id) VALUES
('2017/11/05', 23.45, 45),
(CURDATE(), 777.77, 109);

lets say there were intially 109 cust and now we are down to 5.
so we can do right join to find their associated orders;


SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
	----+------------+-----------+------------------+----+------------+--------+-------------+
| id | first_name | last_name | email            | id | order_date | amount | customer_id |
+----+------------+-----------+------------------+----+------------+--------+-------------+
|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+----+------------+-----------+------------------+----+------------+--------+-------------+

SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
  ON customers.id = orders.customer_id;

	+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| David      | Bowie     | NULL       |   NULL |
| Blue       | Steele    | NULL       |   NULL |
+------------+-----------+------------+--------+
7 rows in set (0.00 sec)


-- Right JOin

SELECT first_name, last_name, order_date, amount
FROM customers
RIGHT JOIN orders
  ON customers.id = orders.customer_id;
  -- take everthing from orders and then from customers if overlap

+------------+-----------+------------+--------+
| first_name | last_name | order_date | amount |
+------------+-----------+------------+--------+
| Boy        | George    | 2016-02-10 |  99.99 |
| Boy        | George    | 2017-11-11 |  35.50 |
| George     | Michael   | 2014-12-12 | 800.67 |
| George     | Michael   | 2015-01-03 |  12.50 |
| Bette      | Davis     | 1999-04-11 | 450.25 |
| NULL       | NULL      | 2017-11-05 |  23.45 |
| NULL       | NULL      | 2021-07-08 | 777.77 |
+------------+-----------+------------+--------+

--So the main goal was to show u can delete directly anything form one single table if FK constraint is there.
-- btw , here we can do other things too,  like group by and handling null value;
SELECT
	IFNULL(first_name, 'Missing') AS first,
	IFNULL(last_name,'User') AS last,
	order_date,
	amount,
	SUM(amount)
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customer_id;

+---------+---------+------------+--------+-------------+
| first   | last    | order_date | amount | SUM(amount) |
+---------+---------+------------+--------+-------------+
| Boy     | George  | 2016-02-10 |  99.99 |      135.49 |
| George  | Michael | 2014-12-12 | 800.67 |      813.17 |
| Bette   | Davis   | 1999-04-11 | 450.25 |      450.25 |
| Missing | User    | 2017-11-05 |  23.45 |       23.45 |
| Missing | User    | 2021-07-08 | 777.77 |      777.77 |
+---------+---------+------------+--------+-------------+


SELECT
	IFNULL(first_name, 'Missing') AS first,
	IFNULL(last_name,'User') AS last,
	order_date,
	amount,
	SUM(amount)
FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY first_name, last_name;

---------+---------+------------+--------+-------------+
| first   | last    | order_date | amount | SUM(amount) |
+---------+---------+------------+--------+-------------+
| Missing | User    | 2017-11-05 |  23.45 |      801.22 |
| Bette   | Davis   | 1999-04-11 | 450.25 |      450.25 |
| Boy     | George  | 2016-02-10 |  99.99 |      135.49 |
| George  | Michael | 2014-12-12 | 800.67 |      813.17 |
+---------+---------+------------+--------+-------------+
