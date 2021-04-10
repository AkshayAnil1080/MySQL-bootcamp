LIMIT - allows to specify a number - EG : How many books do u want to select

-- PRINT 5 RECENTLY REALEASED BOOKS.
SELECT title,released_year FROM books ORDER BY 2 DESC LIMIT 5;
-- +----------------------------------+---------------+
-- | title                            | released_year |
-- +----------------------------------+---------------+
-- | Lincoln In The Bardo             |          2017 |
-- | Norse Mythology                  |          2016 |
-- | 10% Happier                      |          2014 |
-- | The Circle                       |          2013 |
-- | A Hologram for the King: A Novel |          2012 |
+----------------------------------+---------------+

SYntax -
LIMIT b ; pirns from starting to b
LIMIT a , b - > if(a<b) -> prints form ath row to bth row
            - > if(a>b) - > prints b rows starting from a.
            -> if b is very huge -  print from a to last.

mysql> SELECT title, released_year FROM books ORDER  BY 2 DESC LIMIT 1,5;
            -- +----------------------------------+---------------+
            -- | title                            | released_year |
            -- +----------------------------------+---------------+
            -- | Norse Mythology                  |          2016 |
            -- | 10% Happier                      |          2014 |
            -- | The Circle                       |          2013 |
            -- | A Hologram for the King: A Novel |          2012 |
            -- | Just Kids                        |          2010 |
            -- +----------------------------------+---------------+



  mysql> SELECT title, released_year FROM books ORDER  BY 2 DESC LIMIT 10,5;
-- +-------------------------------------------+---------------+
-- | title                                     | released_year |
-- +-------------------------------------------+---------------+
-- | American Gods                             |          2001 |
-- | A Heartbreaking Work of Staggering Genius |          2001 |
-- | fake_book                                 |          2001 |
-- | The Amazing Adventures of Kavalier & Clay |          2000 |
-- | Interpreter of Maladies                   |          1996 |
-- +-------------------------------------------+---------------+

mysql> mysql> SELECT title, released_year FROM books ORDER  BY 2 DESC LIMIT 10,987554568967;
-- +-----------------------------------------------------+---------------+
-- | title                                               | released_year |
-- +-----------------------------------------------------+---------------+
-- | American Gods                                       |          2001 |
-- | A Heartbreaking Work of Staggering Genius           |          2001 |
-- | fake_book                                           |          2001 |
-- | The Amazing Adventures of Kavalier & Clay           |          2000 |
-- | Interpreter of Maladies                             |          1996 |
-- | Where I'm Calling From: Selected Stories            |          1989 |
-- | White Noise                                         |          1985 |
-- | What We Talk About When We Talk About Love: Stories |          1981 |
-- | Cannery Row                                         |          1945 |
-- +-----------------------------------------------------+---------------+
