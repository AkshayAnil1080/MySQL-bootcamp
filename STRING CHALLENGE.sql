
GIVEN TABLES
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- | book_id | title                                               | author_fname | author_lname   | released_year | stock_quantity | pages |
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- |       1 | The Namesake                                        | Jhumpa       | Lahiri         |          2003 |             32 |   291 |
-- |       2 | Norse Mythology                                     | Neil         | Gaiman         |          2016 |             43 |   304 |
-- |       3 | American Gods                                       | Neil         | Gaiman         |          2001 |             12 |   465 |
-- |       4 | Interpreter of Maladies                             | Jhumpa       | Lahiri         |          1996 |             97 |   198 |
-- |       5 | A Hologram for the King: A Novel                    | Dave         | Eggers         |          2012 |            154 |   352 |
-- |       6 | The Circle                                          | Dave         | Eggers         |          2013 |             26 |   504 |
-- |       7 | The Amazing Adventures of Kavalier & Clay           | Michael      | Chabon         |          2000 |             68 |   634 |
-- |       8 | Just Kids                                           | Patti        | Smith          |          2010 |             55 |   304 |
-- |       9 | A Heartbreaking Work of Staggering Genius           | Dave         | Eggers         |          2001 |            104 |   437 |
-- |      10 | Coraline                                            | Neil         | Gaiman         |          2003 |            100 |   208 |
-- |      11 | What We Talk About When We Talk About Love: Stories | Raymond      | Carver         |          1981 |             23 |   176 |
-- |      12 | Where I'm Calling From: Selected Stories            | Raymond      | Carver         |          1989 |             12 |   526 |
-- |      13 | White Noise                                         | Don          | DeLillo        |          1985 |             49 |   320 |
-- |      14 | Cannery Row                                         | John         | Steinbeck      |          1945 |             95 |   181 |
-- |      15 | Oblivion: Stories                                   | David        | Foster Wallace |          2004 |            172 |   329 |
-- |      16 | Consider the Lobster                                | David        | Foster Wallace |          2005 |             92 |   343 |
-- +---------+-----------------------------------------------------+--------------+----------------+---------------+----------------+-------+
-- 16 rows in set (0.01 sec)

1.
-- Reverse and uppercase the following sentence;
-- "Why does  my cat look at me with such hatred"

SELECT UPPER(REVERSE('Why does  my cat look at me with such hatred'));

2.
-- What does this print out?
-- SELECT
--   REPLACE
--   (
--     CONCAT('I' , ' ' , 'like' ,' ' , 'cats'),
--     ' ',
--     '_'
--   );
I_like_cats


3.
-- Replace all the space in book title with ->
-- +--------------------------------------------------------------+
-- | title                                                        |
-- +--------------------------------------------------------------+
-- | The->Namesake                                                |
-- | Norse->Mythology                                             |
-- | Consider->the->Lobster                                       |
-- +--------------------------------------------------------------+

SELECT REPLACE(title, ' ' , '->')AS 'title' FROM books;


4. print This+----------+----------------+
-- | forwards | backwards      |
-- +----------+----------------+
-- | Jhumpa   | irihaL         |
-- | Neil     | namiaG         |
-- | Neil     | namiaG         |
-- | David    | ecallaW retsoF |
-- | David    | ecallaW retsoF |
-- +----------+----------------+
SELECT author_fname AS 'forwards', REVERSE(author_lname)AS 'backwards' FROM books;


5. print this -  concat auhtor name in upper case.
-- +----------------------+
-- | full name in caps    |
-- +----------------------+
-- | JHUMPA LAHIRI        |
-- | NEIL GAIMAN          |
-- | NEIL GAIMAN          |
-- | DAVID FOSTER WALLACE |
-- +----------------------+
SELECT UPPER(CONCAT(author_fname,' ', author_lname)) AS 'full name in caps' FROM books;


6. print like This+--------------------------------------------------------------------------+
-- | CONCAT(title ,' was realesed in ' , released_year)                       |
-- +--------------------------------------------------------------------------+
-- | The Namesake was realesed in 2003                                        |
-- | Norse Mythology was realesed in 2016                                     |
-- | Consider the Lobster was realesed in 2005                                |
-- +--------------------------------------------------------------------------+

SELECT CONCAT(title ,' was realesed in ' , released_year) FROM books;

7. print title and its chaaracter account
-- +-----------------------------------------------------+-----------------+
-- | title                                               | character count |
-- +-----------------------------------------------------+-----------------+
-- | The Namesake                                        |              12 |
-- | Norse Mythology                                     |              15 |
-- | Oblivion: Stories                                   |              17 |
-- | Consider the Lobster                                |              20 |
-- +-----------------------------------------------------+-----------------+

SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

8.
-- print fist 10 character of title followed by '...'
-- print author name concatanated by ','
-- print quantity
-- +---------------+----------------------+---------------+
-- | short title   | auhtor               | quantity      |
-- +---------------+----------------------+---------------+
-- | The Namesa... | Jhumpa Lahiri        | 32 in stock   |
-- | Norse Myth... | Neil Gaiman          | 43 in stock   |
-- | Consider t... | David Foster Wallace | 92 in stock   |
-- +---------------+----------------------+---------------+

SELECT
  CONCAT(SUBSTRING(title,1,10) , '...') AS 'short title',
  CONCAT(author_fname, ' ', author_lname) AS 'auhtor',
  CONCAT(stock_quantity , ' in stock ') AS 'quantity'
  FROM books;
