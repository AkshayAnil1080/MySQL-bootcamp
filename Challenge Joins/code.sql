Q.Create table name Students with schema first_name, id as primary Key

CREATE TABLE students( id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(100));



Q. Create table with name Papers wiht schema title, grade, student_id as foreign key  linked to id in students tables

CREATE TABLE papers(
  title VARCHAR(100),
  grade INT,
  student_id INT,
    FOREIGN KEY(student_id)
       REFERENCES students(id)
        ON DELETE CASCADE
);

Iserting VALUES
INSERT INTO students (first_name) VALUES
('Caleb'),
('Samantha'),
('Raj'),
('Carlos'),
('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


mysql> select * from students;
+----+------------+
| id | first_name |
+----+------------+
|  1 | Caleb      |
|  2 | Samantha   |
|  3 | Raj        |
|  4 | Carlos     |
|  5 | Lisa       |
+----+------------+

mysql> select * from papers;
+---------------------------------------+-------+------------+
| title                                 | grade | student_id |
+---------------------------------------+-------+------------+
| My First Book Report                  |    60 |          1 |
| My Second Book Report                 |    75 |          1 |
| Russian Lit Through The Ages          |    94 |          2 |
| De Montaigne and The Art of The Essay |    98 |          2 |
| Borges and Magical Realism            |    89 |          4 |
+---------------------------------------+-------+------------+


////
-- EXERCISE 1 : print this
+------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Carlos     | Borges and Magical Realism            |    89 |
| Caleb      | My Second Book Report                 |    75 |
| Caleb      | My First Book Report                  |    60 |
+------------+---------------------------------------+-------+

//let do a explicit inner join

 SELECT first_name, title, grade
FROM students
 INNER JOIN papers
 ON students.id= papers.student_id
 ORDER BY grade DESC;
 +------------+---------------------------------------+-------+
 | first_name | title                                 | grade |
 +------------+---------------------------------------+-------+
 | Samantha   | De Montaigne and The Art of The Essay |    98 |
 | Samantha   | Russian Lit Through The Ages          |    94 |
 | Carlos     | Borges and Magical Realism            |    89 |
 | Caleb      | My Second Book Report                 |    75 |
 | Caleb      | My First Book Report                  |    60 |
 +------------+---------------------------------------+-------+

 -- ALT SOL  A-students- here since inner join( the intesectiing part)  == entire part in papers -
 so same above code with right joni will also work
 SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
 ON students.id= papers.student_id
 ORDER BY grade DESC;


 // exercise 2 :
 +------------+---------------------------------------+-------+
| first_name | title                                 | grade |
+------------+---------------------------------------+-------+
| Caleb      | My First Book Report                  |    60 |
| Caleb      | My Second Book Report                 |    75 |
| Samantha   | Russian Lit Through The Ages          |    94 |
| Samantha   | De Montaigne and The Art of The Essay |    98 |
| Carlos     | Borges and Magical Realism            |    89 |
| Raj        | NULL                                  |  NULL |
| Lisa       | NULL                                  |  NULL |
+------------+---------------------------------------+-------+
 clearly its a left JOIN ; grab everything from students and then associated papers with it

SELECT first_name, title, grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id;
