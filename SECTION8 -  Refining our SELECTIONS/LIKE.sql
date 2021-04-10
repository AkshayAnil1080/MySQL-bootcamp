-- name wiht da in it - > '%da%'
-- name starts wiht da -> 'da%'

mysql> SELECT title, author_fname FROM books WHERE author_fname like '%da%';
+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
| fake_book                                 | Freida       |
+-------------------------------------------+--------------+

ysql> SELECT title, author_fname FROM books WHERE author_fname like 'da%';
+-------------------------------------------+--------------+
| title                                     | author_fname |
+-------------------------------------------+--------------+
| A Hologram for the King: A Novel          | Dave         |
| The Circle                                | Dave         |
| A Heartbreaking Work of Staggering Genius | Dave         |
| Oblivion: Stories                         | David        |
| Consider the Lobster                      | David        |
| 10% Happier                               | Dan          |
+-------------------------------------------+--------------+

-- WILDCARD  - 4 underscores.
-- slect book whose stock_qunatity is in exactly 2 or 4 digit number
mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '__';
-- +-----------------------------------------------------+----------------+
-- | title                                               | stock_quantity |
-- +-----------------------------------------------------+----------------+
-- | The Namesake                                        |             32 |
-- | Norse Mythology                                     |             43 |
-- | American Gods                                       |             12 |
-- | Interpreter of Maladies                             |             97 |
-- | The Circle                                          |             26 |
-- | The Amazing Adventures of Kavalier & Clay           |             68 |
-- | Just Kids                                           |             55 |
-- | What We Talk About When We Talk About Love: Stories |             23 |
-- | Where I'm Calling From: Selected Stories            |             12 |
-- | White Noise                                         |             49 |
-- | Cannery Row                                         |             95 |
-- | Consider the Lobster                                |             92 |
-- | 10% Happier                                         |             29 |
-- +-----------------------------------------------------+----------------+


mysql> SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';
-- +----------------------+----------------+
-- | title                | stock_quantity |
-- +----------------------+----------------+
-- | Lincoln In The Bardo |           1000 |
-- +----------------------+----------------+


mysql> SELECT title FROM books WHERE title LIKE '%\%%';   -- to detect %
-- +-------------+
-- | title       |
-- +-------------+
-- | 10% Happier |
-- +-------------+


mysql> SELECT title FROM books WHERE title LIKE '%\_%';   -- to detect _
-- +-----------+
-- | title     |
-- +-----------+
-- | fake_book |
-- +-----------+
