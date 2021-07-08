SELECT * FROM customers
RIGHT JOIN orders
  ON customers.id = orders.customer_id;


  +------+------------+-----------+------------------+----+------------+--------+-------------+
| id   | first_name | last_name | email            | id | order_date | amount | customer_id |
+------+------------+-----------+------------------+----+------------+--------+-------------+
|    1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
|    1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
|    2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
|    2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
|    5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
+------+------------+-----------+------------------+----+------------+--------+-------------+

SELECT * FROM orders
RIGHT JOIN customers
  ON customers.id = orders.customer_id;
  +------+------------+--------+-------------+----+------------+-----------+------------------+
  | id   | order_date | amount | customer_id | id | first_name | last_name | email            |
  +------+------------+--------+-------------+----+------------+-----------+------------------+
  |    1 | 2016-02-10 |  99.99 |           1 |  1 | Boy        | George    | george@gmail.com |
  |    2 | 2017-11-11 |  35.50 |           1 |  1 | Boy        | George    | george@gmail.com |
  |    3 | 2014-12-12 | 800.67 |           2 |  2 | George     | Michael   | gm@gmail.com     |
  |    4 | 2015-01-03 |  12.50 |           2 |  2 | George     | Michael   | gm@gmail.com     |
  |    5 | 1999-04-11 | 450.25 |           5 |  5 | Bette      | Davis     | bette@aol.com    |
  | NULL | NULL       |   NULL |        NULL |  3 | David      | Bowie     | david@gmail.com  |
  | NULL | NULL       |   NULL |        NULL |  4 | Blue       | Steele    | blue@gmail.com   |
  +------+------------+--------+-------------+----+------------+-----------+------------------+
  7 rows in set (0.00 sec)
  
