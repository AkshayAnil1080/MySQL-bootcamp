When the customers is deleted which has some orders delete the orders as well
NEED : sauy of a book is deleted, we want  it reviews to be also deleted.
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
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
    ON DELTE CASCADE
);

-- Inserting some customers and orders

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

  lets say we want to delet boy george orders , the first two rows in orders will be deleted.

  DELETE FROM customers WHERE email = 'george@gmail.com';
  mysql> select * from customers;
      -- +----+------------+-----------+------------------+
      -- | id | first_name | last_name | email            |
      -- +----+------------+-----------+------------------+
      -- |  2 | George     | Michael   | gm@gmail.com     |
      -- |  3 | David      | Bowie     | david@gmail.com  |
      -- |  4 | Blue       | Steele    | blue@gmail.com   |
      -- |  5 | Bette      | Davis     | bette@aol.com    |
      -- +----+------------+-----------+------------------+

mysql> select * from orders;
            -- +----+------------+--------+-------------+
            -- | id | order_date | amount | customer_id |
            -- +----+------------+--------+-------------+
            -- |  3 | 2014-12-12 | 800.67 |           2 |
            -- |  4 | 2015-01-03 |  12.50 |           2 |
            -- |  5 | 1999-04-11 | 450.25 |           5 |
            -- +----+------------+--------+-------------+
