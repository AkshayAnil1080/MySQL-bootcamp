-- print auhtor_lanme in ascending order
mysql> SELECT author_lname FROM books ORDER BY author_lname;
+----------------+
| author_lname   |
+----------------+
| Carver         |
| Carver         |
| Chabon         |
| DeLillo        |
| Eggers         |
| Eggers         |
| Eggers         |
| Foster Wallace |
| Foster Wallace |
| Gaiman         |
| Gaiman         |
| Gaiman         |
| Harris         |
| Harris         |
| Lahiri         |
| Lahiri         |
| Saunders       |
| Smith          |
| Steinbeck      |
+----------------+

--  print title in ascending order(by default)(ASC)  and descending order (DESC)
mysql> mysql> SELECT title  FROM books ORDER BY title;
-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | 10% Happier                                         |
-- | A Heartbreaking Work of Staggering Genius           |
-- | A Hologram for the King: A Novel                    |
-- | American Gods                                       |
-- | Cannery Row                                         |
-- | Consider the Lobster                                |
-- | Coraline                                            |
-- | fake_book                                           |
-- | Interpreter of Maladies                             |
-- | Just Kids                                           |
-- | Lincoln In The Bardo                                |
-- | Norse Mythology                                     |
-- | Oblivion: Stories                                   |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | The Circle                                          |
-- | The Namesake                                        |
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | White Noise                                         |
-- +-----------------------------------------------------+

mysql> SELECT title  FROM books ORDER BY title DESC;
-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | White Noise                                         |
-- | Where I'm Calling From: Selected Stories            |
-- | What We Talk About When We Talk About Love: Stories |
-- | The Namesake                                        |
-- | The Circle                                          |
-- | The Amazing Adventures of Kavalier & Clay           |
-- | Oblivion: Stories                                   |
-- | Norse Mythology                                     |
-- | Lincoln In The Bardo                                |
-- | Just Kids                                           |
-- | Interpreter of Maladies                             |
-- | fake_book                                           |
-- | Coraline                                            |
-- | Consider the Lobster                                |
-- | Cannery Row                                         |
-- | American Gods                                       |
-- | A Hologram for the King: A Novel                    |
-- | A Heartbreaking Work of Staggering Genius           |
-- | 10% Happier                                         |
-- +-----------------------------------------------------+


-- ordering muktiple columns with respec to one column_name
mysql> SELECT title, released_year, pages FROM books ORDER BY released_year;
-- +-----------------------------------------------------+---------------+-------+
-- | title                                               | released_year | pages |
-- +-----------------------------------------------------+---------------+-------+
-- | Cannery Row                                         |          1945 |   181 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |   176 |
-- | White Noise                                         |          1985 |   320 |
-- | Where I'm Calling From: Selected Stories            |          1989 |   526 |
-- | Interpreter of Maladies                             |          1996 |   198 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |   634 |
-- | fake_book                                           |          2001 |   428 |
-- | American Gods                                       |          2001 |   465 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |   437 |
-- | Coraline                                            |          2003 |   208 |
-- | The Namesake                                        |          2003 |   291 |
-- | Oblivion: Stories                                   |          2004 |   329 |
-- | Consider the Lobster                                |          2005 |   343 |
-- | Just Kids                                           |          2010 |   304 |
-- | A Hologram for the King: A Novel                    |          2012 |   352 |
-- | The Circle                                          |          2013 |   504 |
-- | 10% Happier                                         |          2014 |   256 |
-- | Norse Mythology                                     |          2016 |   304 |
-- | Lincoln In The Bardo                                |          2017 |   367 |
-- +-----------------------------------------------------+---------------+-------+

-- also we didnt necessarily need to print that particular column which is used for order by
mysql> SELECT title, pages FROM books ORDER BY released_year;
-- +-----------------------------------------------------+-------+
-- | title                                               | pages |
-- +-----------------------------------------------------+-------+
-- | Cannery Row                                         |   181 |
-- | What We Talk About When We Talk About Love: Stories |   176 |
-- | White Noise                                         |   320 |
-- | Where I'm Calling From: Selected Stories            |   526 |
-- | Interpreter of Maladies                             |   198 |
-- | The Amazing Adventures of Kavalier & Clay           |   634 |
-- | fake_book                                           |   428 |
-- | American Gods                                       |   465 |
-- | A Heartbreaking Work of Staggering Genius           |   437 |
-- | Coraline                                            |   208 |
-- | The Namesake                                        |   291 |
-- | Oblivion: Stories                                   |   329 |
-- | Consider the Lobster                                |   343 |
-- | Just Kids                                           |   304 |
-- | A Hologram for the King: A Novel                    |   352 |
-- | The Circle                                          |   504 |
-- | 10% Happier                                         |   256 |
-- | Norse Mythology                                     |   304 |
-- | Lincoln In The Bardo                                |   367 |
-- +-----------------------------------------------------+-------+

-- we can alsi use numbers in order by
mysql> SELECT title, released_year, pages FROM books ORDER BY 2;  -- and use can DESC for descending order.
-- +-----------------------------------------------------+---------------+-------+
-- | title                                               | released_year | pages |
-- +-----------------------------------------------------+---------------+-------+
-- | Cannery Row                                         |          1945 |   181 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |   176 |
-- | White Noise                                         |          1985 |   320 |
-- | Where I'm Calling From: Selected Stories            |          1989 |   526 |
-- | Interpreter of Maladies                             |          1996 |   198 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |   634 |
-- | fake_book                                           |          2001 |   428 |
-- | American Gods                                       |          2001 |   465 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |   437 |
-- | Coraline                                            |          2003 |   208 |
-- | The Namesake                                        |          2003 |   291 |
-- | Oblivion: Stories                                   |          2004 |   329 |
-- | Consider the Lobster                                |          2005 |   343 |
-- | Just Kids                                           |          2010 |   304 |
-- | A Hologram for the King: A Novel                    |          2012 |   352 |
-- | The Circle                                          |          2013 |   504 |
-- | 10% Happier                                         |          2014 |   256 |
-- | Norse Mythology                                     |          2016 |   304 |
-- | Lincoln In The Bardo                                |          2017 |   367 |
-- +-----------------------------------------------------+---------------+-------+


-- NEED TO USE Multiple COLUMNS in order by
mysql> SELECT  author_fname, author_lname FROM books ORDER BY author_lname;
-- contraction - author_fname not in order.
-- +--------------+----------------+
-- | author_fname | author_lname   |
-- +--------------+----------------+
-- | Raymond      | Carver         |
-- | Raymond      | Carver         |
-- | Michael      | Chabon         |
-- | Don          | DeLillo        |
-- | Dave         | Eggers         |
-- | Dave         | Eggers         |
-- | Dave         | Eggers         |
-- | David        | Foster Wallace |
-- | David        | Foster Wallace |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
-- | Dan          | Harris         |
-- | Freida       | Harris         |
-- | Jhumpa       | Lahiri         |
-- | Jhumpa       | Lahiri         |
-- | George       | Saunders       |
-- | Patti        | Smith          |
-- | John         | Steinbeck      |
-- +--------------+----------------+

-- need to mention author_fname in order by too.

mysql> SELECT  author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
-- +--------------+----------------+
-- | author_fname | author_lname   |
-- +--------------+----------------+
-- | Raymond      | Carver         |
-- | Raymond      | Carver         |
-- | Michael      | Chabon         |
-- | Don          | DeLillo        |
-- | Dave         | Eggers         |
-- | Dave         | Eggers         |
-- | Dave         | Eggers         |
-- | David        | Foster Wallace |
-- | David        | Foster Wallace |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
-- | Neil         | Gaiman         |
-- | Dan          | Harris         |
-- | Freida       | Harris         |
-- | Jhumpa       | Lahiri         |
-- | Jhumpa       | Lahiri         |
-- | George       | Saunders       |
-- | Patti        | Smith          |
-- | John         | Steinbeck      |
-- +--------------+----------------+
