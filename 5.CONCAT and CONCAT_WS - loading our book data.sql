
 
CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

DESC books;
+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| book_id        | int(11)      | NO   | PRI | NULL    | auto_increment |
| title          | varchar(100) | YES  |     | NULL    |                |
| author_fname   | varchar(100) | YES  |     | NULL    |                |
| author_lname   | varchar(100) | YES  |     | NULL    |                |
| released_year  | int(11)      | YES  |     | NULL    |                |
| stock_quantity | int(11)      | YES  |     | NULL    |                |
| pages          | int(11)      | YES  |     | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+

SELECT * FROM books;

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


// CONCAT 
1. SELECT CONCAT(author_fname,' ', author_lname) FROM books;
+----------------------------------------+
| CONCAT(author_fname,' ', author_lname) |
+----------------------------------------+
| Jhumpa Lahiri                          |
| Neil Gaiman                            |
| Neil Gaiman                            |
| Jhumpa Lahiri                          |
| Dave Eggers                            |
| Dave Eggers                            |
| Michael Chabon                         |
| Patti Smith                            |
| Dave Eggers                            |
| Neil Gaiman                            |
| Raymond Carver                         |
| Raymond Carver                         |
| Don DeLillo                            |
| John Steinbeck                         |
| David Foster Wallace                   |
| David Foster Wallace                   |
+----------------------------------------+

//2. ALIASES and concat
SELECT CONCAT(author_fname,' ', author_lname) AS fullname FROM books;
+----------------------+
| fullname             |
+----------------------+
| Jhumpa Lahiri        |
| Neil Gaiman          |
| Neil Gaiman          |
| Jhumpa Lahiri        |
| Dave Eggers          |
| Dave Eggers          |
| Michael Chabon       |
| Patti Smith          |
| Dave Eggers          |
| Neil Gaiman          |
| Raymond Carver       |
| Raymond Carver       |
| Don DeLillo          |
| John Steinbeck       |
| David Foster Wallace |
| David Foster Wallace |
+----------------------+


//2 a.
Print like this now
| Michael | Chabon         | MichaelChabon       |
| Patti   | Smith          | PattiSmith          |
| Dave    | Eggers         | DaveEggers          |
| Neil    | Gaiman         | NeilGaiman          |
| Raymond | Carver         | RaymondCarver       |
| Raymond | Carver         | RaymondCarver       |
| Don     | DeLillo        | DonDeLillo          |
| John    | Steinbeck      | JohnSteinbeck       |
| David   | Foster Wallace | DavidFoster Wallace |
| David   | Foster Wallace | DavidFoster Wallace |
+---------+----------------+---------------------+
16 rows in set (0.00 sec)
SELECT author_fname AS first, author_lname AS last, CONCAT (author_fname, author_lname) AS fullname FROM books;


// CONCAT_WS

SELECT CONCAT_WS (title, ' - ' , author_fname, ' - ' , author_lname) FROM books;    // use - before title and author_lname;
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| CONCAT_WS (title, ' - ' , author_fname, ' - ' , author_lname)                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|  - The NamesakeJhumpaThe Namesake - The NamesakeLahiri                                                                                                                       |
|  - Norse MythologyNeilNorse Mythology - Norse MythologyGaiman                                                                                                                |
|  - American GodsNeilAmerican Gods - American GodsGaiman                                                                                                                      |
|  - Interpreter of MaladiesJhumpaInterpreter of Maladies - Interpreter of MaladiesLahiri                                                                                      |
|  - A Hologram for the King: A NovelDaveA Hologram for the King: A Novel - A Hologram for the King: A NovelEggers                                                             |
|  - The CircleDaveThe Circle - The CircleEggers                                                                                                                               |
|  - The Amazing Adventures of Kavalier & ClayMichaelThe Amazing Adventures of Kavalier & Clay - The Amazing Adventures of Kavalier & ClayChabon                               |
|  - Just KidsPattiJust Kids - Just KidsSmith                                                                                                                                  |
|  - A Heartbreaking Work of Staggering GeniusDaveA Heartbreaking Work of Staggering Genius - A Heartbreaking Work of Staggering GeniusEggers                                  |
|  - CoralineNeilCoraline - CoralineGaiman                                                                                                                                     |
|  - What We Talk About When We Talk About Love: StoriesRaymondWhat We Talk About When We Talk About Love: Stories - What We Talk About When We Talk About Love: StoriesCarver |
|  - Where I'm Calling From: Selected StoriesRaymondWhere I'm Calling From: Selected Stories - Where I'm Calling From: Selected StoriesCarver                                  |
|  - White NoiseDonWhite Noise - White NoiseDeLillo                                                                                                                            |
|  - Cannery RowJohnCannery Row - Cannery RowSteinbeck                                                                                                                         |
|  - Oblivion: StoriesDavidOblivion: Stories - Oblivion: StoriesFoster Wallace                                                                                                 |
|  - Consider the LobsterDavidConsider the Lobster - Consider the LobsterFoster Wallace                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

SELECT CONCAT_WS (' - ', title, author_fname, author_lname) FROM books;     - evenly spaced with a symbol
+------------------------------------------------------------------------+
| CONCAT_WS (' - ', title, author_fname, author_lname)                   |
+------------------------------------------------------------------------+
| The Namesake - Jhumpa - Lahiri                                         |
| Norse Mythology - Neil - Gaiman                                        |
| American Gods - Neil - Gaiman                                          |
| Interpreter of Maladies - Jhumpa - Lahiri                              |
| A Hologram for the King: A Novel - Dave - Eggers                       |
| The Circle - Dave - Eggers                                             |
| The Amazing Adventures of Kavalier & Clay - Michael - Chabon           |
| Just Kids - Patti - Smith                                              |
| A Heartbreaking Work of Staggering Genius - Dave - Eggers              |
| Coraline - Neil - Gaiman                                               |
| What We Talk About When We Talk About Love: Stories - Raymond - Carver |
| Where I'm Calling From: Selected Stories - Raymond - Carver            |
| White Noise - Don - DeLillo                                            |
| Cannery Row - John - Steinbeck                                         |
| Oblivion: Stories - David - Foster Wallace                             |
| Consider the Lobster - David - Foster Wallace                          |
+------------------------------------------------------------------------+
16 rows in set (0.00 sec)



