-- 1. title that contians stories
SELECT title FROM books WHERE title like '%stories%';
-- +-----------------------------------------------------+
-- | title                                               |
-- +-----------------------------------------------------+
-- | What We Talk About When We Talk About Love: Stories |
-- | Where I'm Calling From: Selected Stories            |
-- | Oblivion: Stories                                   |
-- +-----------------------------------------------------+

-- 2. print out the title and page count for the longt books
SELECT title, pages FROM books ORDER  BY 2 DESC LIMIT 1;
-- +-------------------------------------------+-------+
-- | title                                     | pages |
-- +-------------------------------------------+-------+
-- | The Amazing Adventures of Kavalier & Clay |   634 |
-- +-------------------------------------------+-------+

-- 3. 3 most recently realesed book, prin the table name as summary ( title - year)
SELECT CONCAT(title, ' - ' ,  released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;
-- +-----------------------------+
-- | summary                     |
-- +-----------------------------+
-- | Lincoln In The Bardo - 2017 |
-- | Norse Mythology - 2016      |
-- | 10% Happier - 2014          |
-- +-----------------------------+

--4
-- Find all books with an author_lname that contain a space(" ")
-- +----------------------+----------------+
-- | title                | author_lname   |
-- +----------------------+----------------+
-- | Oblivion: Stories    | Foster Wallace |
-- | Consider the Lobster | Foster Wallace |
-- +----------------------+----------------+
SELECT title, author_lname FROM books WHERE author_lname LIKE "% %";

-- 5. Finf the 3 books with the lowest stock_quantity
-- +-----------------------------------------------------+---------------+----------------+
-- | title                                               | released_year | stock_quantity |
-- +-----------------------------------------------------+---------------+----------------+
-- | Where I'm Calling From: Selected Stories            |          1989 |             12 |
-- | American Gods                                       |          2001 |             12 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |             23 |
-- +-----------------------------------------------------+---------------+----------------+
SELECT title, released_year, stock_quantity FROM books ORDER BY 3 ASC LIMIT 3;

--6. print title and author_lname , sorted first by author_lname and then by title
-- +-----------------------------------------------------+----------------+
-- | title                                               | author_lname   |
-- +-----------------------------------------------------+----------------+
-- | What We Talk About When We Talk About Love: Stories | Carver         |
-- | Where I'm Calling From: Selected Stories            | Carver         |
-- | The Amazing Adventures of Kavalier & Clay           | Chabon         |
-- | White Noise                                         | DeLillo        |
-- | A Heartbreaking Work of Staggering Genius           | Eggers         |
-- | A Hologram for the King: A Novel                    | Eggers         |
-- | The Circle                                          | Eggers         |
-- | Consider the Lobster                                | Foster Wallace |
-- | Oblivion: Stories                                   | Foster Wallace |
-- | American Gods                                       | Gaiman         |
-- | Coraline                                            | Gaiman         |
-- | Norse Mythology                                     | Gaiman         |
-- | 10% Happier                                         | Harris         |
-- | fake_book                                           | Harris         |
-- | Interpreter of Maladies                             | Lahiri         |
-- | The Namesake                                        | Lahiri         |
-- | Lincoln In The Bardo                                | Saunders       |
-- | Just Kids                                           | Smith          |
-- | Cannery Row                                         | Steinbeck      |
-- +-----------------------------------------------------+----------------+
SELECT  title, author_lname FROM books ORDER BY  title , author_lname;

-- 7.
SORT alphabatically  by Last Name
-- +-----------------------------------------------+
-- | yell                                          |
-- +-----------------------------------------------+
-- | MY FAVORITE AUTHIOR IS RAYMOND CARVER !       |
-- | MY FAVORITE AUTHIOR IS RAYMOND CARVER !       |
-- | MY FAVORITE AUTHIOR IS MICHAEL CHABON !       |
-- | MY FAVORITE AUTHIOR IS DON DELILLO !          |
-- | MY FAVORITE AUTHIOR IS DAVE EGGERS !          |
-- | MY FAVORITE AUTHIOR IS DAVE EGGERS !          |
-- | MY FAVORITE AUTHIOR IS DAVE EGGERS !          |
-- | MY FAVORITE AUTHIOR IS DAVID FOSTER WALLACE ! |
-- | MY FAVORITE AUTHIOR IS DAVID FOSTER WALLACE ! |
-- | MY FAVORITE AUTHIOR IS NEIL GAIMAN !          |
-- | MY FAVORITE AUTHIOR IS NEIL GAIMAN !          |
-- | MY FAVORITE AUTHIOR IS NEIL GAIMAN !          |
-- | MY FAVORITE AUTHIOR IS DAN HARRIS !           |
-- | MY FAVORITE AUTHIOR IS FREIDA HARRIS !        |
-- | MY FAVORITE AUTHIOR IS JHUMPA LAHIRI !        |
-- | MY FAVORITE AUTHIOR IS JHUMPA LAHIRI !        |
-- | MY FAVORITE AUTHIOR IS GEORGE SAUNDERS !      |
-- | MY FAVORITE AUTHIOR IS PATTI SMITH !          |
-- | MY FAVORITE AUTHIOR IS JOHN STEINBECK !       |
-- +-----------------------------------------------+
SELECT CONCAT('MY FAVORITE AUTHIOR IS ',UPPER(author_fname), ' ' , UPPER(author_lname), ' !') AS yell FROM books ORDER BY author_lname;
