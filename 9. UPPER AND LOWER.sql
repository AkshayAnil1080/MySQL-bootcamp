mysql> SELECT CONCAT('MY FAVORITE BOOK IS ' , UPPER(title)) FROM books;
+-------------------------------------------------------------------------+
| CONCAT('MY FAVORITE BOOK IS ' , UPPER(title))                           |
+-------------------------------------------------------------------------+
| MY FAVORITE BOOK IS THE NAMESAKE                                        |
| MY FAVORITE BOOK IS NORSE MYTHOLOGY                                     |
| MY FAVORITE BOOK IS AMERICAN GODS                                       |
| MY FAVORITE BOOK IS INTERPRETER OF MALADIES                             |
| MY FAVORITE BOOK IS A HOLOGRAM FOR THE KING: A NOVEL                    |
| MY FAVORITE BOOK IS THE CIRCLE                                          |
| MY FAVORITE BOOK IS THE AMAZING ADVENTURES OF KAVALIER & CLAY           |
| MY FAVORITE BOOK IS JUST KIDS                                           |
| MY FAVORITE BOOK IS A HEARTBREAKING WORK OF STAGGERING GENIUS           |
| MY FAVORITE BOOK IS CORALINE                                            |
| MY FAVORITE BOOK IS WHAT WE TALK ABOUT WHEN WE TALK ABOUT LOVE: STORIES |
| MY FAVORITE BOOK IS WHERE I'M CALLING FROM: SELECTED STORIES            |
| MY FAVORITE BOOK IS WHITE NOISE                                         |
| MY FAVORITE BOOK IS CANNERY ROW                                         |
| MY FAVORITE BOOK IS OBLIVION: STORIES                                   |
| MY FAVORITE BOOK IS CONSIDER THE LOBSTER                                |
+-------------------------------------------------------------------------+


mysql> SELECT UPPER('Hello World');
+----------------------+
| UPPER('Hello World') |
+----------------------+
| HELLO WORLD          |
+----------------------+


SELECT CONCAT('MY FAVORITE BOOK IS ' , LOWER(title)) FROM books;

+-------------------------------------------------------------------------+
| CONCAT('MY FAVORITE BOOK IS ' , LOWER(title))                           |
+-------------------------------------------------------------------------+
| MY FAVORITE BOOK IS the namesake                                        |
| MY FAVORITE BOOK IS norse mythology                                     |
| MY FAVORITE BOOK IS american gods                                       |
| MY FAVORITE BOOK IS interpreter of maladies                             |
| MY FAVORITE BOOK IS a hologram for the king: a novel                    |
| MY FAVORITE BOOK IS the circle                                          |
| MY FAVORITE BOOK IS the amazing adventures of kavalier & clay           |
| MY FAVORITE BOOK IS just kids                                           |
| MY FAVORITE BOOK IS a heartbreaking work of staggering genius           |
| MY FAVORITE BOOK IS coraline                                            |
| MY FAVORITE BOOK IS what we talk about when we talk about love: stories |
| MY FAVORITE BOOK IS where i'm calling from: selected stories            |
| MY FAVORITE BOOK IS white noise                                         |
| MY FAVORITE BOOK IS cannery row                                         |
| MY FAVORITE BOOK IS oblivion: stories                                   |
| MY FAVORITE BOOK IS consider the lobster                                |
+-------------------------------------------------------------------------+
