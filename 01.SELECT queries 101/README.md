# [SQL Lesson 1: SELECT queries 101](https://sqlbolt.com/lesson/select_queries_introduction)

> **SELECT** : A query in itself is just a statement which declares what data we are looking for, where to find it in the database, and optionally, how to transform it before it is returned.

### Example:  
```sql
-- Select query for sprcific columns(col_1, col_2)
SELECT col_1, col_2
FROM mytable;
```

> The result of this query will be a two-dimensional set of rows and columns, effectively a copy of the table, but only with the columns that we requested.

<mark>**Note:**</mark> If we want to retrieve absolutely all the columns of data from a table, we can then use the asterisk (*) shorthand in place of listing all the column names individually.

---

### Example problem: 
```sql
-- Find the title and years of each film
SELECT title, years  --> Here title, years are columns name
FROM movies;  --> Here moivies is table name
```

> This code will show output of the **title** and **years** columns from **movies** table.
