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
### Creating Databases
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
### Inserting Data and Viewing , Multiple Insert
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
	
### PRIMARY KEYS AND AUTO INCREMENT
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

### CURD commands - CREATE,UPDATE,READ, DELETE
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
	
