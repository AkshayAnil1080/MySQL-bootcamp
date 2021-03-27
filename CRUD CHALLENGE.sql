Spring CLeaning - the annual cost inventory- bunch of tshirts


mysql> CREATE TABLE shirts
    ->
    ->   (
    ->
    ->     shirt_id INT NOT NULL AUTO_INCREMENT,
    ->
    ->     article VARCHAR(100),
    ->
    ->     color VARCHAR(100),
    ->
    ->     shirt_size VARCHAR(100),
    ->
    ->     last_worn INT,
    ->
    ->     PRIMARY KEY(shirt_id)
    ->
    ->   );
Query OK, 0 rows affected (0.04 sec)

mysql> DESC shirts;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| shirt_id   | int(11)      | NO   | PRI | NULL    | auto_increment |
| article    | varchar(100) | YES  |     | NULL    |                |
| color      | varchar(100) | YES  |     | NULL    |                |
| shirt_size | varchar(100) | YES  |     | NULL    |                |
| last_worn  | int(11)      | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
    -> ('t-shirt', 'white', 'S', 10),
    ->
    -> ('t-shirt', 'green', 'S', 200),
    ->
    -> ('polo shirt', 'black', 'M', 10),
    ->
    -> ('tank top', 'blue', 'S', 50),
    ->
    -> ('t-shirt', 'pink', 'S', 0),
    ->
    -> ('polo shirt', 'red', 'M', 5),
    ->
    -> ('tank top', 'white', 'S', 200),
    ->
    -> ('tank top', 'blue', 'M', 15);
Query OK, 8 rows affected (0.01 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql>
mysql> selct * from shirts
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to you
r MySQL server version for the right syntax to use near 'selct * from shirts' at line 1
mysql> select * from shirts;
+----------+------------+-------+------------+-----------+
| shirt_id | article    | color | shirt_size | last_worn |
+----------+------------+-------+------------+-----------+
|        1 | t-shirt    | white | S          |        10 |
|        2 | t-shirt    | green | S          |       200 |
|        3 | polo shirt | black | M          |        10 |
|        4 | tank top   | blue  | S          |        50 |
|        5 | t-shirt    | pink  | S          |         0 |
|        6 | polo shirt | red   | M          |         5 |
|        7 | tank top   | white | S          |       200 |
|        8 | tank top   | blue  | M          |        15 |
+----------+------------+-------+------------+-----------+
8 rows in set (0.00 sec)


1. add new tshirt 
Purple polo hsort, size M last worn 50 days ago
mysql> INSERT INTO shirts(article, color,shirt_size,last_worn) VALUES('polo shirt', 'Purple', 'M',
50);
Query OK, 1 row affected (0.01 sec)


mysql> Select * from shirts;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        1 | t-shirt    | white  | S          |        10 |
|        2 | t-shirt    | green  | S          |       200 |
|        3 | polo shirt | black  | M          |        10 |
|        4 | tank top   | blue   | S          |        50 |
|        5 | t-shirt    | pink   | S          |         0 |
|        6 | polo shirt | red    | M          |         5 |
|        7 | tank top   | white  | S          |       200 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | Purple | M          |        50 |
+----------+------------+--------+------------+-----------+
9 rows in set (0.00 sec)

2. select all shirts but print only article and color
mysql> select article,color from shirts;
+------------+--------+
| article    | color  |
+------------+--------+
| t-shirt    | white  |
| t-shirt    | green  |
| polo shirt | black  |
| tank top   | blue   |
| t-shirt    | pink   |
| polo shirt | red    |
| tank top   | white  |
| tank top   | blue   |
| polo shirt | Purple |
+------------+--------+
9 rows in set (0.00 sec)

3. SELECT all medium shirts - print out everything but shirt_id

mysql> select * from shirts where shirt_size='M';
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | M          |        10 |
|        6 | polo shirt | red    | M          |         5 |
|        8 | tank top   | blue   | M          |        15 |
|        9 | polo shirt | Purple | M          |        50 |
+----------+------------+--------+------------+-----------+
4 rows in set (0.00 sec)

mysql> select article, color, shirt_size, last_worn  from shirts where shirt_size='M';
+------------+--------+------------+-----------+
| article    | color  | shirt_size | last_worn |
+------------+--------+------------+-----------+
| polo shirt | black  | M          |        10 |
| polo shirt | red    | M          |         5 |
| tank top   | blue   | M          |        15 |
| polo shirt | Purple | M          |        50 |
+------------+--------+------------+-----------+
4 rows in set (0.00 sec)


4.update all polo shirts - change their size to L.


mysql> select * from shirts where article='polo shirt'
    -> ;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | M          |        10 |
|        6 | polo shirt | red    | M          |         5 |
|        9 | polo shirt | Purple | M          |        50 |
+----------+------------+--------+------------+-----------+
3 rows in set (0.00 sec)

mysql>
mysql> select * from shirts where article='polo shirt'
    ->     ->^C

^C
mysql>
mysql> update shirts set shirt_size='L' where article='polo shirt';
Query OK, 3 rows affected (0.00 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from shirts where article='polo shirt'
    -> ;
+----------+------------+--------+------------+-----------+
| shirt_id | article    | color  | shirt_size | last_worn |
+----------+------------+--------+------------+-----------+
|        3 | polo shirt | black  | L          |        10 |
|        6 | polo shirt | red    | L          |         5 |
|        9 | polo shirt | Purple | L          |        50 |
+----------+------------+--------+------------+-----------+
3 rows in set (0.00 sec)

5.update the shirt last worn 15 days ago - change to 0.

mysql> select * from shirts where last_worn=15;
+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        8 | tank top | blue  | M          |        15 |
+----------+----------+-------+------------+-----------+
1 row in set (0.00 sec)

mysql> update shirts set last_worn=0  where last_worn=15;
Query OK, 1 row affected (0.00 sec)

Check:
mysql> select * from shirts where last_worn=0;
+----------+----------+-------+------------+-----------+
| shirt_id | article  | color | shirt_size | last_worn |
+----------+----------+-------+------------+-----------+
|        5 | t-shirt  | pink  | S          |         0 |
|        8 | tank top | blue  | M          |         0 |
+----------+----------+-------+------------+-----------+
2 rows in set (0.00 sec)


6. UPDATE all white shirts
 change the size to 'XS' and color to 'Off white'

mysql> update shirts set shirt_size='XS', color='off White' where color='white';
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from shirts
    -> ;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off White | XS         |        10 |
|        2 | t-shirt    | green     | S          |       200 |
|        3 | polo shirt | black     | L          |        10 |
|        4 | tank top   | blue      | S          |        50 |
|        5 | t-shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        7 | tank top   | off White | XS         |       200 |
|        8 | tank top   | blue      | M          |         0 |
|        9 | polo shirt | Purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
9 rows in set (0.00 sec)


7.  delete all old short - last worn 200 days ago

]mysql> delete from shirts where last_worn=200;
Query OK, 2 rows affected (0.00 sec)

mysql> select * from shirts
    -> ;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off White | XS         |        10 |
|        3 | polo shirt | black     | L          |        10 |
|        4 | tank top   | blue      | S          |        50 |
|        5 | t-shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        8 | tank top   | blue      | M          |         0 |
|        9 | polo shirt | Purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
7 rows in set (0.00 sec)

8.Delete all tank tops

mysql> delete from shirts where article='tank top';
Query OK, 2 rows affected (0.01 sec)

mysql> select * from shirts;
+----------+------------+-----------+------------+-----------+
| shirt_id | article    | color     | shirt_size | last_worn |
+----------+------------+-----------+------------+-----------+
|        1 | t-shirt    | off White | XS         |        10 |
|        3 | polo shirt | black     | L          |        10 |
|        5 | t-shirt    | pink      | S          |         0 |
|        6 | polo shirt | red       | L          |         5 |
|        9 | polo shirt | Purple    | L          |        50 |
+----------+------------+-----------+------------+-----------+
5 rows in set (0.00 sec)


9. delete all shirts

mysql> delete from shirts;
Query OK, 5 rows affected (0.01 sec)

mysql> select * from shirts;
Empty set (0.00 sec)


10. DROP the entrire shirt tables;
mysql> drop table shirts;
Query OK, 0 rows affected (0.11 sec)

mysql> select * from shirts;
ERROR 1146 (42S02): Table 'cat_app.shirts' doesn't exist
