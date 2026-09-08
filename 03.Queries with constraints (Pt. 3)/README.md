# [SQL Lesson 3: Queries with constraints (Pt. 2)](https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2)

> **WHERE** : The clause is applied to each row of data by checking specific column values to determine whether it should be included in the results or not.

### Example:
```sql
-- Select query with constraints

SELECT col_1, col_2, …
FROM mytable
WHERE condition
AND/OR another_condition
AND/OR …;
```
> SQL supports a number of useful operators to do things like case-insensitive string comparison and wildcard pattern matching.

| Operator | Condition | Example |
|:---:|---|---|
| `=` | Exact match | `col_name = "abc"` |
| `!=` / `<>` | Not equal | `col_name != "abcd"` |
| `LIKE` | Pattern match | `col_name LIKE "ABC"` |
| `NOT LIKE` | Does not match pattern | `col_name NOT LIKE "ABCD"` |
| `%` | Matches 0 or more characters | `col_name LIKE "%AT%"` |
| `_` | Matches exactly 1 character | `col_name LIKE "AN_"` |
| `IN (...)` | Matches any value in a list | `col_name IN ("A", "B", "C")` |
| `NOT IN (...)` | Doesn't match any value in a list | `col_name NOT IN ("D", "E", "F")` |

<mark>**Note:**</mark> `All strings must be quoted so that the query parser can distinguish words in the string from SQL keywords.`

---

### Example problem: 
```sql
-- Find all the WALL-* movies

SELECT title FROM movies  --> Here title is the column name and movies is the table name
WHERE title LIKE '%WALL-%';  --> This line filters the title column and shows only movies whose title contains "WALL-"
```

> This code will filter will list all the movies title from the **title** column from the **movies** table where the movie title contains **"WALL-"**.
