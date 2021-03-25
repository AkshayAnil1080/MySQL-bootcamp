
mysql> SELECT * FROM cats;
+----------------------------------------------------+------+
| name                                               | age  |
+----------------------------------------------------+------+
| BLUE                                               |    1 |
| Dreco                                              |   11 |
| Charlie                                            |    3 |
| Jelly                                              |    2 |
| Tango                                              |    1 |
| This is some text blah blah blah blah blah text te |   10 |
| lima                                               |    0 |
+----------------------------------------------------+------+
7 rows in set (0.00 sec)

mysql> INSERT INTO cats(name , age) VALUES('rock' ,6);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO cats(name , age) VALUES('rock' ,6);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO cats(name , age) VALUES('rock' ,6);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO cats(name , age) VALUES('rock' ,6);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM cats;
+----------------------------------------------------+------+
| name                                               | age  |
+----------------------------------------------------+------+
| BLUE                                               |    1 |
| Dreco                                              |   11 |
| Charlie                                            |    3 |
| Jelly                                              |    2 |
| Tango                                              |    1 |
| This is some text blah blah blah blah blah text te |   10 |
| lima                                               |    0 |
| rock                                               |    6 |
| rock                                               |    6 |
| rock                                               |    6 |
| rock                                               |    6 |
+----------------------------------------------------+------+
11 rows in set (0.00 sec)

// NEED A UNIQUE IDENTIFIER TO DISTINGUISH THE SAME name and age here.  - PRIMARY KEY


// i want a key to distinguish ...creating a new attribue cat_id as primary key.
mysql> CREATE TABLE unique_cats(cat_id INT  NOT NULL , name VARCHAR(100) , age INT , PRIMARY KEY (cat_id) ) ;
Query OK, 0 rows affected (0.06 sec)

mysql> DESC unique_cats;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| cat_id | int(11)      | NO   | PRI | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| age    | int(11)      | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> INSERT INTO unique_cats(cat_id, name, age) VALUES(1, "Fred" , 23);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM unique_cats;
+--------+------+------+
| cat_id | name | age  |
+--------+------+------+
|      1 | Fred |   23 |
+--------+------+------+

mysql> INSERT INTO unique_cats(cat_id, name, age) VALUES(2, "Louise" , 3);
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM unique_cats;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Fred   |   23 |
|      2 | Louise |    3 |
+--------+--------+------+
2 rows in set (0.00 sec)

mysql> INSERT INTO unique_cats(cat_id, name, age) VALUES(1, "James" , 3);
ERROR 1062 (23000): Duplicate entry '1' for key 'PRIMARY'

mysql> U cannot have a duplicate name for primay id^C

// AUTO INCREMENT  - no need to pass the primary key input and will be able to pass same cat name now
mysql> CREATE TABLE unique_cats2 (
    ->
    ->     cat_id INT NOT NULL AUTO_INCREMENT,
    ->
    ->     name VARCHAR(100),
    ->
    ->     age INT,
    ->
    ->     PRIMARY KEY (cat_id)
    ->
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO unique_cats2(name, age) VALUES('Jiff', 3);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO unique_cats2(name, age) VALUES('Skippy', 4);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM unique_cats2;
+--------+--------+------+
| cat_id | name   | age  |
+--------+--------+------+
|      1 | Skippy |    4 |
|      2 | Jiff   |    3 |
|      3 | Jiff   |    3 |
|      4 | Skippy |    4 |
+--------+--------+------+
4 rows in set (0.00 sec)


