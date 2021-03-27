DELETE -  
DELETE FROM cats WHERE name='Egg';
 
SELECT * FROM cats;  -  it deletes everything - 
 
SELECT * FROM cats WHERE name='egg';
 
DELETE FROM cats WHERE name='egg';
 
SELECT * FROM cats;
 
DELETE FROM cats;


mysql> select * from cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      4 | Egg            | Persian           |    4 |
|      5 | Misty          | Shorthair         |   13 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+
7 rows in set (0.00 sec)

mysql>
mysql>
mysql>
mysql> delete from cats where name='egg';
Query OK, 1 row affected (0.01 sec)

mysql> select * from cats;
+--------+----------------+-------------------+------+
| cat_id | name           | breed             | age  |
+--------+----------------+-------------------+------+
|      1 | Ringo          | British Shorthair |    4 |
|      2 | Cindy          | Maine Coon        |   12 |
|      3 | Dumbledore     | Maine Coon        |   12 |
|      5 | Misty          | Shorthair         |   13 |
|      6 | George Michael | Ragdoll           |    9 |
|      7 | Jack           | Sphynx            |    7 |
+--------+----------------+-------------------+------+
6 rows in set (0.00 sec)


CHALLENGE 5: 
1. Delete all cats that are 4 years old
2. Delete cats whose age is the same as their cat_id
3. Delete all cats here-


mysql> delete from cats where age=4;
Query OK, 1 row affected (0.01 sec)

mysql> select * from cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
|      7 | Jack           | Sphynx     |    7 |
+--------+----------------+------------+------+
5 rows in set (0.00 sec)


mysql> delete from cats where cat_id=age;
Query OK, 1 row affected (0.04 sec)

mysql> select * from cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
+--------+----------------+------------+------+
4 rows in set (0.02 sec)


mysql> select * from cats;
+--------+----------------+------------+------+
| cat_id | name           | breed      | age  |
+--------+----------------+------------+------+
|      2 | Cindy          | Maine Coon |   12 |
|      3 | Dumbledore     | Maine Coon |   12 |
|      5 | Misty          | Shorthair  |   13 |
|      6 | George Michael | Ragdoll    |    9 |
+--------+----------------+------------+------+
4 rows in set (0.00 sec)

mysql> Delete from cats;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from cats;
Empty set (0.00 sec)
