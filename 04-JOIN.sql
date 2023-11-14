# TABLE REFERENCE
SELECT m.title, g.name 
FROM movies AS m, genres AS g
WHERE genre_id = g.id 
AND g.name = "Comedia";

# JOIN
SELECT m.title, g.name 
FROM movies m 
INNER JOIN genres g
ON genre_id = g.id;

# JOIN CON WHERE
SELECT m.title, g.name 
FROM movies m 
INNER JOIN genres g
ON genre_id = g.id
WHERE m.title LIKE "Toy%";

# JOIN CON DISTINCT
SELECT DISTINCT a.first_name, a.last_name
FROM actors a
INNER JOIN actor_movie am
ON am.actor_id = a.id
INNER JOIN movies m
ON m.id = am.movie_id
WHERE m.title LIKE '%Harry Potter%';




