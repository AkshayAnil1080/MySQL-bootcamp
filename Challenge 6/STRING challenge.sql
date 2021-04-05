initila table
mysql> SELECT * FROM books;
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
| book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
|       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
|       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
|       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
|       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
|       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
|       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
|       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
|       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
|       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
|      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
|      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
|      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
|      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
|      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
|      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
|      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
+---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+



mysql> SELECT UPPER(REVERSE('Why does  my cat look at me with such hatred'));
+----------------------------------------------------------------+
| UPPER(REVERSE('Why does  my cat look at me with such hatred')) |
+----------------------------------------------------------------+
| DERTAH HCUS HTIW EM TA KOOL TAC YM  SEOD YHW                   |
+----------------------------------------------------------------+
1 row in set (0.00 sec)


mysql> SELECT UPPER(REVERSE('Why does  my cat look at me with such hatred'));
+----------------------------------------------------------------+
| UPPER(REVERSE('Why does  my cat look at me with such hatred')) |
+----------------------------------------------------------------+
| DERTAH HCUS HTIW EM TA KOOL TAC YM  SEOD YHW                   |
+----------------------------------------------------------------+
1 row in set (0.00 sec)



mysql> SELECT
    ->
    ->   REPLACE
    ->
    ->   (
    ->
    ->     CONCAT('I' , ' ' , 'like' ,' ' , 'cats'),
    ->


+-------------------------------------------------------------------------------------+
| I_like_cats                                                                         |
+-------------------------------------------------------------------------------------+

mysql> SELECT REPLACE(title, ' ' , '->') FROM books;
+--------------------------------------------------------------+
| REPLACE(title, ' ' , '->')                                   |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+

mysql> SELECT REPLACE(title, ' ' , '->') FROM books;
+--------------------------------------------------------------+
| REPLACE(title, ' ' , '->')                                   |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |



mysql> SELECT REPLACE(title, ' ' , '->')AS 'title' FROM books;
+--------------------------------------------------------------+
| title                                                        |
+--------------------------------------------------------------+
| The->Namesake                                                |
| Norse->Mythology                                             |
| American->Gods                                               |
| Interpreter->of->Maladies                                    |
| A->Hologram->for->the->King:->A->Novel                       |
| The->Circle                                                  |
| The->Amazing->Adventures->of->Kavalier->&->Clay              |
| Just->Kids                                                   |
| A->Heartbreaking->Work->of->Staggering->Genius               |
| Coraline                                                     |
| What->We->Talk->About->When->We->Talk->About->Love:->Stories |
| Where->I'm->Calling->From:->Selected->Stories                |
| White->Noise                                                 |
| Cannery->Row                                                 |
| Oblivion:->Stories                                           |
| Consider->the->Lobster                                       |
+--------------------------------------------------------------+


mysql> SELECT author_fname AS 'forwards', REVERSE(author_lname)AS 'backwards' FROM books;
+----------+----------------+
| forwards | backwards      |
+----------+----------------+
| Jhumpa   | irihaL         |
| Neil     | namiaG         |
| Neil     | namiaG         |
| Jhumpa   | irihaL         |
| Dave     | sreggE         |
| Dave     | sreggE         |
| Michael  | nobahC         |
| Patti    | htimS          |
| Dave     | sreggE         |
| Neil     | namiaG         |
| Raymond  | revraC         |
| Raymond  | revraC         |
| Don      | olliLeD        |
| John     | kcebnietS      |
| David    | ecallaW retsoF |
| David    | ecallaW retsoF |
+----------+----------------+


mysql> SELECT UPPER(CONCAT(author_fname,' ', author_lname)) AS 'full name in caps' FROM books;
+----------------------+
| full name in caps    |
+----------------------+
| JHUMPA LAHIRI        |
| NEIL GAIMAN          |
| NEIL GAIMAN          |
| JHUMPA LAHIRI        |
| DAVE EGGERS          |
| DAVE EGGERS          |
| MICHAEL CHABON       |
| PATTI SMITH          |
| DAVE EGGERS          |
| NEIL GAIMAN          |
| RAYMOND CARVER       |
| RAYMOND CARVER       |
| DON DELILLO          |
| JOHN STEINBECK       |
| DAVID FOSTER WALLACE |
| DAVID FOSTER WALLACE |
+----------------------+


mysql> SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;
+-----------------------------------------------------+-----------------+
| title                                               | character count |
+-----------------------------------------------------+-----------------+
| The Namesake                                        |              12 |
| Norse Mythology                                     |              15 |
| American Gods                                       |              13 |
| Interpreter of Maladies                             |              23 |
| A Hologram for the King: A Novel                    |              32 |
| The Circle                                          |              10 |
| The Amazing Adventures of Kavalier & Clay           |              41 |
| Just Kids                                           |               9 |
| A Heartbreaking Work of Staggering Genius           |              41 |
| Coraline                                            |               8 |
| What We Talk About When We Talk About Love: Stories |              51 |
| Where I'm Calling From: Selected Stories            |              40 |
| White Noise                                         |              11 |
| Cannery Row                                         |              11 |
| Oblivion: Stories                                   |              17 |
| Consider the Lobster                                |              20 |
+-----------------------------------------------------+-----------------+

mysql> SELECT
    ->
    ->   CONCAT(SUBSTRING(title,1,10) , '...') AS 'short title',
    ->
    ->   CONCAT(author_fname, ' ', author_lname) AS 'auhtor',
    ->
    ->   CONCAT(stock_quantity , ' in stock ') AS 'quantity'
    ->
    ->   FROM books;
+---------------+----------------------+---------------+
| short title   | auhtor               | quantity      |
+---------------+----------------------+---------------+
| The Namesa... | Jhumpa Lahiri        | 32 in stock   |
| Norse Myth... | Neil Gaiman          | 43 in stock   |
| American G... | Neil Gaiman          | 12 in stock   |
| Interprete... | Jhumpa Lahiri        | 97 in stock   |
| A Hologram... | Dave Eggers          | 154 in stock  |
| The Circle... | Dave Eggers          | 26 in stock   |
| The Amazin... | Michael Chabon       | 68 in stock   |
| Just Kids...  | Patti Smith          | 55 in stock   |
| A Heartbre... | Dave Eggers          | 104 in stock  |
| Coraline...   | Neil Gaiman          | 100 in stock  |
| What We Ta... | Raymond Carver       | 23 in stock   |
| Where I'm ... | Raymond Carver       | 12 in stock   |
| White Nois... | Don DeLillo          | 49 in stock   |
| Cannery Ro... | John Steinbeck       | 95 in stock   |
| Oblivion: ... | David Foster Wallace | 172 in stock  |
| Consider t... | David Foster Wallace | 92 in stock   |
+---------------+----------------------+---------------+




