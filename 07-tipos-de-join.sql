-- JOIN
SELECT title, name
FROM movies
LEFT JOIN genres
ON movies.genre_id = genres.id;

-- LEFT
SELECT title, name
FROM movies
LEFT JOIN genres
ON movies.genre_id = genres.id;

-- RIGHT
SELECT title, name
FROM movies
RIGHT JOIN genres
ON movies.genre_id = genres.id;

-- EXCLUDE RIGHT
SELECT title, name
FROM genres
RIGHT JOIN movies
ON movies.genre_id = genres.id
WHERE genres.id IS NULL;

-- EXCLUDE LEFT
SELECT title, name
FROM genres
LEFT JOIN movies
ON movies.genre_id = genres.id
WHERE movies.id IS NULL;
