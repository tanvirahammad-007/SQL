-- List all movies and their combined sales in millions of dollars
SELECT title, id, (domestic_sales + international_sales)/1000000 as total from movies
LEFT JOIN boxoffice on id = movie_id;


-- List all movies and their ratings in percent
SELECT title, id, (rating * 10)/100 as ratings from movies
LEFT JOIN boxoffice on id = movie_id;


-- List all movies that were released on even number years
SELECT title, id, year from movies
LEFT JOIN boxoffice on id = movie_id
WHERE year % 2 = 0;

