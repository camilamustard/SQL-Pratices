/* SELECT title, release_year
FROM films
WHERE release_year BETWEEN 1990 AND 2000
AND budget > 100000000
AND language = 'Spanish';


SELECT title, certification
FROM films
WHERE certification IN ('NC-17', 'R');

SELECT name
FROM people
WHERE name LIKE 'B%';

SELECT name
FROM people
WHERE name LIKE '_r%';

SELECT MAX(duration)
FROM films;

SELECT AVG(gross)
FROM films
where title LIKE 'A%';

SELECT (MAX(release_year) - MIN(release_year)) / 10.0
AS number_of_decades
FROM films;

SELECT name
FROM people
ORDER BY birthdate;

SELECT title, gross
FROM films
WHERE title LIKE 'M%'
ORDER BY title;

SELECT imdb_score, film_id
FROM reviews
ORDER BY imdb_score DESC;

To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:

SELECT name
FROM people
ORDER BY name DESC;
Now practice using ORDER BY with DESC to sort single columns in descending order! 
