-- Find the number of movies each director has directed
SELECT director, count(title) as total_directed from movies
GROUP BY director;


-- Find the total domestic and international sales that can be attributed to each director
SELECT director, sum(domestic_sales + international_sales) as total from movies
JOIN boxoffice on id = movie_id
GROUP BY director;
