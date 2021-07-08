## MySQL Course Goorm.io Signup Instructions

- Sign up for a free goorm account, [here](https://accounts.goorm.io/signup).
	- Be sure to use a valid email, you will need to confirm the email address in order to sign up.
- Log in to Goorm.io, if you are not already logged in.
- Go to your IDE dashboard, [here](https://ide.goorm.io/my), this is where you will create and manage your containers. Please bookmark this page, you will use it often.
- To create a new container, click on the "+ New Container" button in the top right corner of your IDE dashboard.
	- That button will take you [here](https://ide.goorm.io/container/new).
- Input a container name, e.g., 'mysql'
- Select the region which is closest to your location.
- Go down to "Stack" and click on "Node.js".
- Go down to Additional module/package and check the option for: "Customization for Udemy Course - The Ultimate MySQL Bootcamp: Go from SQL Beginner to Expert".
	- This will install mysql and enable the mysql-ctl command, so you can leave those other two options unchecked.
- Click the "Create" button in the top right corner of the navigation bar.
- Wait a few minutes for your container to be created and configured.
- When the container has been created you will see a green circle around a check mark, now click on the "Run container" button.
- You are now inside of your goorm container. When you're done working you can close this window, but if you want to return to your container you will need to go back to your IDE

mysql-ctl start

mysql-ctl stop

mysql-ctl cli
## CODE:
### 1.Creating Databases
	mysql-ctl cli;   - Start the CLI:
	show databases;  - List available databases:
	CREATE DATABASE database_name; - The general command for creating a database
	Eg.
	CREATE DATABASE soap_store;
### Drop a database:
	DROP DATABASE database_name;   - Once you drop a database, it's gone!
### Using Databases:
	USE <database name>
	SELECT database();
### Creating tables:
	CREATE TABLE tablename
	  (
	    column_name data_type,
	    column_name data_type
	  );
	CREATE TABLE cats
	  (
	    name VARCHAR(100),
	    age INT
	  );
#### How de we know it worked ?
	SHOW TABLES;
	SHOW COLUMNS FROM tablename;
	DESC tablename;
#### Dropping Tables:
	DROP TABLE <tablename>;
#### Challenge 1:  
	Create a table pastries with 2 columns name and quantity - 50 char max
	Inspect tables/columns in CLI
	DELETE your table.
### 2.Inserting Data and Viewing , Multiple Insert
	INSERT INTO table_name(column_name) VALUES (data);
	INSERT INTO cats(name, age) VALUES ('Jetson', 7);
	SELECT * FROM cats;
	INSERT INTO cats(name , age )  VALUES ( 'Charlie' , 3) , ('Jelly' ,2) , ('Tango' , 1) ;
#### Challenge 2 :  Insert
	Create a table people and add
	+------------+------------+------+
	| first_name | last_name  | age  |
	+------------+------------+------+
	| Linda      | Belcher    |   45 |
	| Phillip    | Frond      |   38 |
	| Calvin     | Fischoeder |   70 |
	+------------+------------+------+
### Warnings:
	INSERT INTO cats(name, age) VALUES('Lima', 'dsfasdfdas');    // name in varchar and age in int.
	SHOW WARNINGS;    // Incorrec integer value;
### NULL and NOT NULL
	[a link] https://github.com/AkshayAnil1080/MySQL-bootcamp/blob/main/NULL%20AND%20NOT%20NULL.sql
### Setting Default Values
	mysql> CREATE TABLE cats3 ( name VARCHAR(20) DEFAULT 'no name provided' , age INT DEFAULT 99 );
### Combine NOT NULL and DEFAULT:
	CREATE TABLE cats4(name VARCHAR(20) NOT NULL DEFAULT 'unnamed',age INT NOT NULL DEFAULT 99);

### 3.PRIMARY KEYS AND AUTO INCREMENT
	NEED A UNIQUE IDENTIFIER TO DISTINGUISH THE SAME name and age here.  - PRIMARY KEY
	CREATE TABLE unique_cats(cat_id INT  NOT NULL , name VARCHAR(100) , age INT , PRIMARY KEY (cat_id) ) ;

	AUTO INCREMENT  - no need to pass the primary key input and one can pass same cat name now.
	CREATE TABLE unique_cats(cat_id INT  NOT NULL AUTO_INCREMENT, name VARCHAR(100) , age INT , PRIMARY KEY (cat_id) , PRIMARY KEY (cat_id)) ;
#### Challenge 3
	QUESTION :
	Define an Employee table, wiht the following fields:
	id - number( auto increments), mandatory , primary key
	last_name  	- text , mandatory
	first_name	- text , mandatory
	middle_name	- text , not mandatory
	age		- number mandaotry
	current_status	- text , mandatory, defaults to 'employed'
	SOLUTION IS MENTIONED ABOVE....

### 4.CRUD commands - CREATE,READ,UPDATE,DELETE
### READ
	SELECT clause - SELECT name FROM cats;
	SELECT name,age, breed , cat_id FROM cats;	-  >  to read multiple columns and order matters here.
	WHERE clause -  i want all cats who are 4 years old, or lies in particular range..
	it may be used along read(SELECT) and update and delete commands.
	it is case-insensitive too.
	Eg: SELECT * FROM  cats WHERE age=4;
	    SELECT * FROM  cats WHERE name='Egg';
	    SELECT * FROM  cats WHERE name='EgG';
	ALIAS - AS
	-> changes the name for preview only for easy use
	-> Does not actually change the column name
	eg SELECT name,

### UPDATE - How de we change existing data ?
	EG: changing the account password

	UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
	UPDATE cats SET age=14 WHERE name='Misty';
#### Challenge 4: update
	1.Change jackson's name to jack  - update cats set name='Jack' where name='Jackson';
	2. Change Ringo's breed to "Brirish Shorthair"  - update cats set breed='British Shorthair' where name='Ringo';
	3. Update the Maine Coons ages to 12  -  update cats set age=12 where breed='Maine Coon' ;

### DELETE -  
	DELETE FROM cats WHERE name='Egg';
	DELETE * FROM cats;  -  it deletes everything
#### Challenge 5:
	1. Delete all cats that are 4 years old - delete from cats where age=4;
	2. Delete cats whose age is the same as their cat_id   - delete from cats where cat_id=age;
	3. Delete all cats here  - delete from cats;

### CRUD CHALLENGE.
### Running SQL FILES -CREATE AND INSERT
	source helloworld.sql   - source keyword to run the sql file.
### 5.CONCAT , CONCAT+ALIAS, CONCAT_WS , CONCAT+SUBSTRING+ALIAS
	CONCAT(column, anotherColumn)
	SELECT CONCAT(author_fname,' ', author_lname) FROM books;
	SELECT author_fname AS first, author_lname AS last, CONCAT (author_fname, author_lname) AS fullname FROM books;
	SELECT CONCAT_WS (' - ', title, author_fname, author_lname) FROM books;     - evenly spaced with a symbol
	SELECT
   		 CONCAT
    		(
       		SUBSTRING(title,1,10),
       		'...'
   		) AS 'short title'
   		FROM books;
	SUBSTRING('Hello World', 1, 4)  -  Hell
	SUBSTRING('Hello World', 7)	-  World
	SUBSTRING('Hello World', -3)	-  rld
### 6.REPLACE
	SELECT REPLACE('Hello World', 'Hell', '%$#@');
	SELECT SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string' FROM books;
### 7.REVERSE
	SELECT REVERSE('Hello World');  -- ldroW olleH  
	SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;
### 8. CHAR_LENGTH
	SELECT CHAR_LENGTH('Hello World'); -- 11
	SELECT CONCAT(author_lname, 'is' , CHAR_LENGTH(author_lname) , 'characters long') FROM books;

### UPPER AND LOWER
	SELECT UPPER('Hello World');  -- HELLO WORLD
	SELECT LOWER('Hello World');	-- hello world
	SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;

#### Challenge 6: STRINGS in SQL. - have a look at the file above.

### SECTION 8 : DISTINCT
	SELECT DISTINCT author_lname FROM books;  - print distinct values from one column  
	Concating multiple columns to print distinct values or directly use distinct keyword.
	SELECT DISTINCT CONCAT(author_fname, ' ' ,author_lname) FROM books; // will merge all columns in one
	SELECT DISTINCT author_fname, author_lname FROM books;  -- will use respective columns.
### ORDER BY
	SELECT author_lname FROM books ORDER BY author_lname;
	SELECT author_lname FROM books ORDER BY author_lname DESC;
	SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
### LIMIT
	allows to specify a number - EG : How many books do u want to select
 	PRINT 5 RECENTLY REALEASED BOOKS.
	SELECT title,released_year FROM books ORDER BY 2 DESC LIMIT 5;
### LIKE
	SELECT title, author_fname FROM books WHERE author_fname LIKE '%da%';   - name contains 'da'
	SELECT title, author_fname FROM books WHERE author_fname LIKE 'da%'			- name starts with 'da'
	mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
	mysql> SELECT title FROM books WHERE title LIKE '%\%%';   // to detect '%'
	mysql> SELECT title FROM books WHERE title LIKE '%\_%';   // to detect '_'

### SELECT COUNT(*) FROM books;
	SELECT COUNT(author_fname) FROM books;
	SELECT COUNT(DISTINCT author_fname) FROM books;
	SELECT COUNT(DISTICNT author_fname, auhtor_lname) FROM books;
	SELECT title FROM books WHERE title LIKE '%the%';
	SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

### SECTIION  9: AGGREGATE commands
	COUNT
		SELECT COUNT(*) FROM books;
		SELECT COUNT(DISTINCT author_fname) FROM books;
		SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;
		SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
	GROUP BY
		SELECT author_lname, COUNT(*) FROM books GROUP BY author_lname;
		SELECT author_fname, author_lname, COUNT(*) FROM books GRoUP BY author_lname;
		SELECT CONCAT('In ' , released_year , ' ', COUNT(*), ' books(s) released') AS year FROM books GROUP BY released_year;
	MIN and MAX
		SELECT Min(released_year) FROM books;
		SELECT Min(pages) FROM books;
		SELECT title,pages FROM books WHERE pages =(SELECT MIN(pages) FROM books);
		SELECT title, pages FROM books ORDER BY pages ASC Limit 1;
	MIN MAX with GROUP BY
		Find the year each author published their first book.
		 mysql> SELECT author_fname, author_lname, Min(released_year) FROM books GROUP  BY author_lname, author_fname;
		Find the year each author published their latest book. - have to use max(released_year)
		 mysql> SELECT author_fname, author_lname, Max(released_year) FROM books GROUP  BY author_lname, author_fname;
		Find the longest page count for each author and give the column name as "Longestbooks" and author full name as " Authors"
	 	 mysql> SELECT CONCAT(author_fname,' ', author_lname) AS Authors ,Max(pages) AS  LongestBooks FROM books GROUP BY author_lname, author_fname;
	SUM :
		Sum all the pages in entire database
			mysql> SELECT Sum(pages) FROM books;
		SUM All pages that each author has written.
			mysql> SELECT author_fname, author_lname , Sum(Pages) FROM books GROUP BY author_lname, author_fname;
	AVG :
		Calculate released_year across all books
			mysql> SELECT avg(released_year) FROM books;
		Calcualte the average stock quantity for books released in same year.
			mysql> SELECT released_year, Avg(stock_quantity) FROM books GROUP by released_year;
		Average pages written by each author_fname
			mysql> SELECT author_fname, author_lname , Avg(Pages) FROM books GROUP BY author_lname, author_fname;

### SECTION 12 - One To Many
	Eg: Customers and orders
	a. create customer table
	b. create order table
	FOREIGN KEY(customer_id) REFERENCES customers(id) - now u cannot directly delete entries speccally from one table. u need to delete in both.
	Foreign Key :
		ref to another table within a given table.
	IMPLICIT INNER JOIN
		SELECT * FROM customers, orders;   - if do not specify anything -> NATURAL JOIN - n*m
	EXPLICIT INNER JOIN
		SELECT first_name, last_name, order_date, amount
		FROM customers
		JOIN orders
	    ON customers.id = orders.customer_id;



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

			Cross Join
			SELECT * FROM customers, orders;
			Inner JOIN
			SELECT * FROM customers
			JOIN orders
			    ON customers.id = orders.customer_id;
					+----+------------+-----------+------------------+----+------------+--------+-------------+
					| id | first_name | last_name | email            | id | order_date | amount | customer_id |
					+----+------------+-----------+------------------+----+------------+--------+-------------+
					|  1 | Boy        | George    | george@gmail.com |  1 | 2016-02-10 |  99.99 |           1 |
					|  1 | Boy        | George    | george@gmail.com |  2 | 2017-11-11 |  35.50 |           1 |
					|  2 | George     | Michael   | gm@gmail.com     |  3 | 2014-12-12 | 800.67 |           2 |
					|  2 | George     | Michael   | gm@gmail.com     |  4 | 2015-01-03 |  12.50 |           2 |
					|  5 | Bette      | Davis     | bette@aol.com    |  5 | 1999-04-11 | 450.25 |           5 |
					+----+------------+-----------+------------------+----+------------+--------+-------------+
			LEFT Join
			SELECT * FROM customers
			LEFT JOIN orders
			  ON customers.id = orders.customer_id;
				+----+------------+-----------+------------------+------+------------+--------+-------------+
				| id | first_name | last_name | email            | id   | order_date | amount | customer_id |
				+----+------------+-----------+------------------+------+------------+--------+-------------+
				|  1 | Boy        | George    | george@gmail.com |    1 | 2016-02-10 |  99.99 |           1 |
				|  1 | Boy        | George    | george@gmail.com |    2 | 2017-11-11 |  35.50 |           1 |
				|  2 | George     | Michael   | gm@gmail.com     |    3 | 2014-12-12 | 800.67 |           2 |
				|  2 | George     | Michael   | gm@gmail.com     |    4 | 2015-01-03 |  12.50 |           2 |
				|  5 | Bette      | Davis     | bette@aol.com    |    5 | 1999-04-11 | 450.25 |           5 |
				|  3 | David      | Bowie     | david@gmail.com  | NULL | NULL       |   NULL |        NULL |
				|  4 | Blue       | Steele    | blue@gmail.com   | NULL | NULL       |   NULL |        NULL |
				+----+------------+-----------+------------------+------+------------+--------+-------------+
			RIGHT Join
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

			HOW to delete table when foreign key is the existing constraint?
			ow u cannot directly delete entries speccally from one table. u need to delete in both.
			DROP TABLE customers; - error
			DROP TABLE orders; - error
			DROP TABLE  customers , orders; - error
			DROP TABLE orders, customers; - works
