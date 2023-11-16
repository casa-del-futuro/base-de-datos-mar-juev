/*queremos conocer, por un lado, los títulos 
y el nombre del género de todas las series 
de la base de datos.*/

SELECT s.title serie, g.name genero
FROM series s
JOIN genres g ON s.genre_id = g.id;

/*Por otro, necesitamos listar los títulos de 
los episodios junto con el nombre y apellido 
de los actores que trabajan en cada uno de 
ellos.*/
SELECT e.title, a.first_name, a.last_name 
FROM actors a
JOIN actor_episode ae ON a.id = ae.actor_id
JOIN episodes e ON  e.id = ae.episode_id;


/*Para nuestro próximo desafío, necesitamos 
obtener a todos los actores o actrices 
(mostrar nombre y apellido) que han trabajado 
en cualquier película de la saga de La Guerra de 
las galaxias.*/
SELECT DISTINCT a.first_name, a.last_name
FROM movies AS m
JOIN actor_movie AS am 
ON m.id = am.movie_id
JOIN actors AS a
ON a.id = am.actor_id
WHERE m.title LIKE "la guerra de las galaxias%";


/*Crear un listado a partir de la tabla de película
s, mostrar un reporte de la cantidad de películas 
por nombre de género.
*/
SELECT g.name genero, COUNT(*) cantidad_peliculas
FROM movies m 
JOIN genres g ON m.genre_id = g.id
GROUP BY g.name;





