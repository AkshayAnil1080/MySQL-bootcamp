SELECT REPLACE('Hello World', 'Hell', '%$#@');   -- o/p  -  %$#@o World

SELECT REPLACE('Hello World', 'l', '7');  -- He77o Wor7d

SELECT REPLACE('Hello World', 'o', '0');  -- Hell0 W0rld

SELECT REPLACE('HellO World', 'o', '*');   -- HellO W*rld

SELECT
  REPLACE('cheese bread coffee milk', ' ', ' and ');  cheese and bread and coffee and milk

SELECT REPLACE(title, 'e ', '3') FROM books;

-- SELECT
--    CONCAT
--    (
--        SUBSTRING(title, 1, 10),
--        '...'
--    ) AS 'short title'
-- FROM books;
--
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;

SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;

+--------------+
| weird string |
+--------------+
| Th3 Nam3sa   |
| Nors3 Myth   |
| Am3rican G   |
| Int3rpr3t3   |
| A Hologram   |
| Th3 Circl3   |
| Th3 Amazin   |
| Just Kids    |
| A H3artbr3   |
| Coralin3     |
| What W3 Ta   |
| Wh3r3 I'm    |
| Whit3 Nois   |
| Cann3ry Ro   |
| Oblivion:    |
| Consid3r t   |
+--------------+
