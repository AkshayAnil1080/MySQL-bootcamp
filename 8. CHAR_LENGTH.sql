SELECT CHAR_LENGTH('Hello World');


SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;
--  Eggers is 6 character long

SELECT CONCAT(author_lname, 'is' , CHAR_LENGTH(author_lname) , 'characters long') FROM books;


+----------------------------+
| CHAR_LENGTH('Hello World') |
+----------------------------+
|                         11 |
+----------------------------+


+----------------+--------+
| author_lname   | length |
+----------------+--------+
| Lahiri         |      6 |
| Gaiman         |      6 |
| Gaiman         |      6 |
| Lahiri         |      6 |
| Eggers         |      6 |
| Eggers         |      6 |
| Chabon         |      6 |
| Smith          |      5 |
| Eggers         |      6 |
| Gaiman         |      6 |
| Carver         |      6 |
| Carver         |      6 |
| DeLillo        |      7 |
| Steinbeck      |      9 |
| Foster Wallace |     14 |
| Foster Wallace |     14 |
+----------------+--------+


+---------------------------------------------------------------------------------+
| CONCAT(author_lname,  ' is ' , CHAR_LENGTH(author_lname) , ' characters long ') |
+---------------------------------------------------------------------------------+
| Lahiri is 6 characters long                                                     |
| Gaiman is 6 characters long                                                     |
| Gaiman is 6 characters long                                                     |
| Lahiri is 6 characters long                                                     |
| Eggers is 6 characters long                                                     |
| Eggers is 6 characters long                                                     |
| Chabon is 6 characters long                                                     |
| Smith is 5 characters long                                                      |
| Eggers is 6 characters long                                                     |
| Gaiman is 6 characters long                                                     |
| Carver is 6 characters long                                                     |
| Carver is 6 characters long                                                     |
| DeLillo is 7 characters long                                                    |
| Steinbeck is 9 characters long                                                  |
| Foster Wallace is 14 characters long                                            |
| Foster Wallace is 14 characters long                                            |
+---------------------------------------------------------------------------------+
