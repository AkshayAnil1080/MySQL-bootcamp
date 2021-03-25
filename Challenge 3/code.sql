QUESTION : 
Define an Employee table, wiht the following fields:
id - number( auto increments), mandatory , primary key
last_name  	- text , mandatory
first_name	- text , mandatory
middle_name	- text , not mandatory
age		- number mandaotry
current_status	- text , mandatory, defaults to 'employed'


mysql> CREATE TABLE emp( id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(20) NOT NULL , middle_name VARCHAR(20) , last_name VARCHAR(20) NOT NULL , age INT NOT NULL, current_status VARCHAR(20) NOT NULL DEFAULT 'employed') ;
Query OK, 0 rows affected (0.05 sec)

mysql> DESC emp;
+----------------+-------------+------+-----+----------+----------------+
| Field          | Type        | Null | Key | Default  | Extra          |
+----------------+-------------+------+-----+----------+----------------+
| id             | int(11)     | NO   | PRI | NULL     | auto_increment |
| first_name     | varchar(20) | NO   |     | NULL     |                |
| middle_name    | varchar(20) | YES  |     | NULL     |                |
| last_name      | varchar(20) | NO   |     | NULL     |                |
| age            | int(11)     | NO   |     | NULL     |                |
| current_status | varchar(20) | NO   |     | employed |                |
+----------------+-------------+------+-----+----------+----------------+
6 rows in set (0.00 sec)

mysql> INSERT INTO emp(first_name , middle_name, last_name , age) VALUES ('NORA' , 'lovely' , 'khan' , 22);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM emp;
+----+------------+-------------+-----------+-----+----------------+
| id | first_name | middle_name | last_name | age | current_status |
+----+------------+-------------+-----------+-----+----------------+
|  1 | NORA       | lovely      | khan      |  22 | employed       |
+----+------------+-------------+-----------+-----+----------------+
1 row in set (0.00 sec)