// Set deafult Values;

mysql> CREATE TABLE cats3 ( name VARCHAR(20) DEFAULT 'no name provided' , age INT DEFAULT 99 );

mysql> DESC cats3;
+-------+-------------+------+-----+------------------+-------+
| Field | Type        | Null | Key | Default          | Extra |
+-------+-------------+------+-----+------------------+-------+
| name  | varchar(20) | YES  |     | no name provided |       |
| age   | int(11)     | YES  |     | 99               |       |
+-------+-------------+------+-----+------------------+-------+



mysql> INSERT INTO cats3(age)  VALUES(13);
mysql> INSERT INTO cats3() VALUES();
mysql> INSERT INTO cats3(name, age) VALUES('Mont' , NULL);

mysql> SELECT * FROM cats3;
+------------------+------+
| name             | age  |
+------------------+------+
| no name provided |   13 |
| no name provided |   99 |
| Mont             | NULL |
+------------------+------+

// ABove table is allowed to take empty values too.
// Don't let user to pass null values. - NOT NULL

mysql> CREATE TABLE cats4(name VARCHAR(100) NOT NULL DEFAULT 'unnamed' , age INT NOT NULL DEFAULT 99);
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> DESC cats4;
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | unnamed |       |
| age   | int(11)      | NO   |     | 99      |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.06 sec)


mysql> INSERT INTO cats4(name, age) VALUES('cali' , NULL);
ERROR 1048 (23000): Column 'age' cannot be null

// throws error.... not accepting null values.