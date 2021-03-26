// Preparing Our Data

mysql> CREATE TABLE cats
    ->
    ->   (
    ->
    ->      cat_id INT NOT NULL AUTO_INCREMENT,
    ->
    ->      name   VARCHAR(100),
    ->
    ->      breed  VARCHAR(100),
    ->
    ->      age    INT,
    ->
    ->      PRIMARY KEY (cat_id)
    ->
    ->   );
Query OK, 0 rows affected (0.28 sec)

mysql> INSERT INTO cats(name, breed, age)
    ->
    -> VALUES ('Ringo', 'Tabby', 4),
    ->
    ->        ('Cindy', 'Maine Coon', 10),
    ->
    ->        ('Dumbledore', 'Maine Coon', 11),
    ->
    ->        ('Egg', 'Persian', 4),
    ->
    ->        ('Misty', 'Tabby', 13),
    ->
    ->        ('George Michael', 'Ragdoll', 9),
    ->
    ->        ('Jackson', 'Sphynx', 7);
Query OK, 7 rows affected (0.07 sec)
Records: 7  Duplicates: 0  Warnings: 0

// READ : 
* => give all columns

mysql> select * from cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      1 | Ringo          | Tabby      |    4 |
|      2 | Cindy          | Maine Coon |   10 |
|      3 | Dumbledore     | Maine Coon |   11 |
|      4 | Egg            | Persian    |    4 |
|      5 | Misty          | Tabby      |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jackson        | Sphynx     |    7 |
+--------+----------------+------------+------+
7 rows in set (0.00 sec)

// SELECT -  > to read specific columns
mysql> select name from cats;
+----------------+
| name           |
+----------------+
| Ringo          |
| Cindy          |
| Dumbledore     |
| Egg            |
| Misty          |
| George Michael |
| Jackson        |
+----------------+

// to read multiple columns and order matters here.
mysql> select name,age, breed , cat_id from cats;
+----------------+------+------------+--------+
| name           | age  | breed      | cat_id |
+----------------+------+------------+--------+
| Ringo          |    4 | Tabby      |      1 |
| Cindy          |   10 | Maine Coon |      2 |
| Dumbledore     |   11 | Maine Coon |      3 |
| Egg            |    4 | Persian    |      4 |
| Misty          |   13 | Tabby      |      5 |
| George Michael |    9 | Ragdoll    |      6 |
| Jackson        |    7 | Sphynx     |      7 |
+----------------+------+------------+--------+


// WHERE clause -  i want all cats who are 4 years old, or lies in particular range..
//it may be used along read(SELECT) and update and delete commands.
// it is case-insensitive too.

mysql> select * from cats where age=4;
+--------+-------+---------+------+
| cat_id | name  | breed   | age  |
+--------+-------+---------+------+
|      1 | Ringo | Tabby   |    4 |
|      4 | Egg   | Persian |    4 |
+--------+-------+---------+------+
2 rows in set (0.02 sec)

mysql> select * from cats where name='Egg';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+
1 row in set (0.00 sec)

mysql> select * from cats where name='EgG';
+--------+------+---------+------+
| cat_id | name | breed   | age  |
+--------+------+---------+------+
|      4 | Egg  | Persian |    4 |
+--------+------+---------+------+




EXERCISE: 
1. read the cat_id only  - SELECT cat_id FROM cats; 
+--------+
| cat_id |
+--------+
|      1 |
|      2 |
|      3 |
|      4 |
|      5 |
|      6 |
|      7 |
+--------+

2. read name and breed both;  -  
SELECT name, breed FROM cats; 
+----------------+------------+
| name           | breed      |
+----------------+------------+
| Ringo          | Tabby      |
| Cindy          | Maine Coon |
| Dumbledore     | Maine Coon |
| Egg            | Persian    |
| Misty          | Tabby      |
| George Michael | Ragdoll    |
| Jackson        | Sphynx     |
+----------------+------------+


3. ready name and age for breed tabby - SELECT name, age FROM cats WHERE breed='Tabby'; 
+-------+------+
| name  | age  |
+-------+------+
| Ringo |    4 |
| Misty |   13 |
+-------+------+

4. read cat_id and age when they have same value -  
SELECT cat_id, age FROM cats WHERE cat_id=age; 
+--------+------+
| cat_id | age  |
+--------+------+
|      4 |    4 |
|      7 |    7 |
+--------+------+



// Aliases   - if have 100 and 1000 of columns, typign the given name always may be hectic
-> use as keyword
-> Provides a user friendly name for ease.
-> Its just for preview, it doesnt change the name of columns.

mysql> select cat_id as id , name from cats;
+----+----------------+
| id | name           |
+----+----------------+
|  1 | Ringo          |
|  2 | Cindy          |
|  3 | Dumbledore     |
|  4 | Egg            |
|  5 | Misty          |
|  6 | George Michael |
|  7 | Jackson        |
+----+----------------+

mysql> select name as 'cat name' , breed as 'kitty breed' from cats;
+----------------+-------------+
| cat name       | kitty breed |
+----------------+-------------+
| Ringo          | Tabby       |
| Cindy          | Maine Coon  |
| Dumbledore     | Maine Coon  |
| Egg            | Persian     |
| Misty          | Tabby       |
| George Michael | Ragdoll     |
| Jackson        | Sphynx      |
+----------------+-------------+
7 rows in set (0.00 sec)

mysql> DESC cats;
+--------+--------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra          |
+--------+--------------+------+-----+---------+----------------+
| cat_id | int(11)      | NO   | PRI | NULL    | auto_increment |
| name   | varchar(100) | YES  |     | NULL    |                |
| breed  | varchar(100) | YES  |     | NULL    |                |
| age    | int(11)      | YES  |     | NULL    |                |
+--------+--------------+------+-----+---------+----------------+




