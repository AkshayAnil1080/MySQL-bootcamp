mysql> CREATE TABLE mit(first_name VARChAR(50) ,  last_name VARCHAR(50) , age INT);  
                                                    
mysql> INSERT INTO mit(first_name , last_name , age) VALUES ('Linda' , 'Belcher' , 45);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO mit(first_name , last_name , age) VALUES ('Phillip' , 'Frond' , 38) , ('Calvin' , 'Fischoeder'  , 70);
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM mit;
+------------+------------+------+
| first_name | last_name  | age  |
+------------+------------+------+
| Linda      | Belcher    |   45 |
| Phillip    | Frond      |   38 |
| Calvin     | Fischoeder |   70 |
+------------+------------+------+
3 rows in set (0.00 sec)

mysql> DROP TABLE mit;