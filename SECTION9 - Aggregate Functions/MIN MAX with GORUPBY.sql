Q1. Find the year each author published their first book.
mysql> SELECT author_fname, author_lname, Min(released_year) FROM books GROUP  BY author_fname, author_lname;
+--------------+----------------+--------------------+
| author_fname | author_lname   | Min(released_year) |
+--------------+----------------+--------------------+
| Dan          | Harris         |               2014 |
| Dave         | Eggers         |               2001 |
| David        | Foster Wallace |               2004 |
| Don          | DeLillo        |               1985 |
| Freida       | Harris         |               2001 |
| George       | Saunders       |               2017 |
| Jhumpa       | Lahiri         |               1996 |
| John         | Steinbeck      |               1945 |
| Michael      | Chabon         |               2000 |
| Neil         | Gaiman         |               2001 |
| Patti        | Smith          |               2010 |
| Raymond      | Carver         |               1981 |
+--------------+----------------+--------------------+
