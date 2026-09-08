# [Queries with constraints (Pt. 1)](https://sqlbolt.com/lesson/select_queries_with_constraints)

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
> More complex clauses can be constructed by joining numerous AND or OR logical keywords.

| Operator | Description | Example |
|---|---|---|
| `=`, `!=`, `<`, `<=`, `>`, `>=` | Comparison | `col_name != 4` |
| `BETWEEN ... AND ...` | Within a range (inclusive) | `col_name BETWEEN 1.5 AND 10.5` |
| `NOT BETWEEN ... AND ...` | Outside a range (inclusive) | `col_name NOT BETWEEN 1 AND 10` |
| `IN (...)` | Matches any value in a list | `col_name IN (2, 4, 6)` |
| `NOT IN (...)` | Does not match any value in a list | `col_name NOT IN (1, 3, 5)` |

<mark>**Note:**</mark> `SQL doesn't require you to write the keywords all capitalized.`

---

### Example problem: 
```sql
-- Find the movies not released in the years between 2000 and 2010

SELECT title, years  --> Here title, years are column names
FROM movies  --> Here movies is the table name
WHERE year NOT BETWEEN 2000 AND 2010  --> This line filters out and shows only data NOT between 2000 & 2010;
```

> This code will filter the database and only show output of the **title** and **years** columns from **movies** table between **2000** and **2010**.
