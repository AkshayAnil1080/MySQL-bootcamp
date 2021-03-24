mysql>  CREATE TABLE cats2(name VARCHAR(20) NOT NULL , age INT NOT NULL);
Query OK, 0 rows affected (0.20 sec)


mysql> INSERT INTO cats2(age) VALUES(7);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> SHOW WARNINGS;
+---------+------+-------------------------------------------+
| Level   | Code | Message                                   |
+---------+------+-------------------------------------------+
| Warning | 1364 | Field 'name' doesn't have a default value |
+---------+------+-------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats2;
+-------+-----+
| name  | age |
+-------+-----+
| Texas |   0 |
|       |   7 |
+-------+-----+
2 rows in set (0.00 sec)

mysql> INSERT INTO cats2(age) VALUES(7);
Query OK, 1 row affected, 1 warning (0.01 sec)

mysql> SHOW WARNINGS;
+---------+------+-------------------------------------------+
| Level   | Code | Message                                   |
+---------+------+-------------------------------------------+
| Warning | 1364 | Field 'name' doesn't have a default value |
+---------+------+-------------------------------------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM cats2;
+-------+-----+
| name  | age |
+-------+-----+
| Texas |   0 |
|       |   7 |
+-------+-----+
2 rows in set (0.00 sec)


CHALLENGE ->  HOW TO ASSIGN DEFAULT VALUES?
