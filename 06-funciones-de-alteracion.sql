-- CONCAT()
SELECT CONCAT("Hola soy ",first_name, " ", last_name) AS saludo
FROM actors;
-- COALESCE()
SELECT title, rating, awards, COALESCE(length,"desconocido") as duracion, COALESCE(genre_id,"sin genero")as genero FROM movies;

-- DATEDIFF()
SELECT title,YEAR(NOW()) - YEAR(release_date) FROM movies;

-- EXTRACT()
SELECT *, EXTRACT(YEAR FROM release_date) FROM movies;

-- REPLACE()
SELECT  REPLACE(title, "Harry", "Franco") AS TITLE FROM movies
WHERE title LIKE "Harry%";

-- DATEFORMAT()
SELECT *, DATE_FORMAT(release_date, "%a %d/%M/%Y") FROM series;

-- DATEADD()

SELECT release_date, DATE_SUB(release_date, INTERVAL "2" DAY) FROM series;

-- CASE 
SELECT title,length,
CASE 
	WHEN length IS NULL THEN "no se la duracion"
	WHEN length <= 150 THEN "mirable"
    WHEN length BETWEEN 151 AND 270 THEN "media larga"
    ELSE "mui larga inmirable"
END AS DURACION ,
awards,
IF(awards>= 5, "mui premiada","mui mala")
FROM movies;

-- length()
SELECT *  FROM movies
WHERE length(title) > 20;


-- Extra
SELECT *, LCASE(title), UCASE(title)  FROM movies
WHERE length(title) > 20;

SELECT LEFT("SQL Tutorial", 3) as extraer_izq,RIGHT("SQL Tutorial", 8) AS extraer_der;

-- LISTA DE VOCALES
SELECT c.id ID, c.nombre Nombre, c.compositor Compositor
FROM canciones c
WHERE LEFT(c.nombre,1) in ("a","e","i","o","u")

