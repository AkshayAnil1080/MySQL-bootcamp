CREATE TABLE stud
    (
        stud_id INT NOT NULL AUTO_INCREMENT,
        name VARCHAR(100),
        age INT,
        PRIMARY KEY(stud_id)
    );
 
mysql-ctl cli
 
use cat_app;
 
source helloworld.sql
 
DESC stud;
 
 
 
INSERT INTO stud(name , age)
VALUES('AKSHAY' ,  22);
INSERT INTO stud(name , age)
VALUES('NORA' ,  22);
INSERT INTO stud(name , age)
VALUES('SHREK' ,  22);

INSERT INTO stud(name , age)
VALUES('Puckloo' ,  22);

SELECT * FROM stud;


source testing/insert.sql