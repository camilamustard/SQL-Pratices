/*Sql functions
GROUP BY practice
As you've just seen, combining aggregate functions with GROUP BY can yield some powerful results!

A word of warning: SQL will return an error if you try to SELECT a field that is not in your GROUP BY clause without using it to calculate some kind of value about the entire group.

Note that you can combine GROUP BY with ORDER BY to group your results, calculate something about them, and then order your results. For example,

SELECT sex, count(*)
FROM employees
GROUP BY sex
ORDER BY count DESC;
might return something like

sex	count
female	19
male	15

because there are more females at our company than males. Note also that ORDER BY always goes after GROUP BY. Let's try some exercises!

GROUP BY practice (2)
Now practice your new skills by combining GROUP BY and ORDER BY with some more aggregate functions!

Make sure to always put the ORDER BY clause at the end of your query. You can't sort values that you haven't calculated yet!

HAVING a great time
In SQL, aggregate functions can't be used in WHERE clauses. For example, the following query is invalid:

SELECT release_year
FROM films
GROUP BY release_year
WHERE COUNT(title) > 10;
This means that if you want to filter based on the result of an aggregate function, you need another way! That's where the HAVING clause comes in. For example,

SELECT release_year
FROM films
GROUP BY release_year
HAVING COUNT(title) > 10;

shows only those years in which more than 10 films were released.

In how many different years were more than 200 movies released?

SELECT release_year
FROM films
GROUP BY release_year
HAVING COUNT(title) > 200;

SELECT country, release_year, MIN(gross)
FROM films
GROUP BY country, release_year
ORDER BY country, release_year;

All together now
Time to practice using ORDER BY, GROUP BY and HAVING together.

Now you're going to write a query that returns the average budget and average gross earnings for films in each year after 1990, if the average budget is greater than $60 million.

This is going to be a big query, but you can handle it!

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;

All together now (2)
Great work! Now try another large query. This time, all in one go!

Remember, if you only want to return a certain number of results, you can use the LIMIT keyword to limit the number of rows returned

Instructions
0 XP
Get the country, average budget, and average gross take of countries that have made more than 10 films. Order the result by country name, and limit the number of results displayed to 5. You should alias the averages as avg_budget and avg_gross respectively.


-- select country, average budget, 
-- and average gross
SELECT country, AVG(budget) AS avg_budget, 
       AVG(gross) AS avg_gross
-- from the films table
FROM films
-- group by country 
GROUP BY country
-- where the country has more than 10 titles
HAVING COUNT(title) > 10
-- order by country
ORDER BY country
-- limit to only show 5 results
LIMIT 5;

A taste of things to come
Congrats on making it to the end of the course! By now you should have a good understanding of the basics of SQL.

There's one more concept we're going to introduce. You may have noticed that all your results so far have been from just one table, e.g., films or people.

In the real world however, you will often want to query multiple tables. For example, what if you want to see the IMDB score for a particular movie?

In this case, you'd want to get the ID of the movie from the films table and then use it to get IMDB information from the reviews table. In SQL, this concept is known as a join, and a basic join is shown in the editor to the right.

The query in the editor gets the IMDB score for the film To Kill a Mockingbird! Cool right?

As you can see, joins are incredibly useful and important to understand for anyone using SQL.

We have a whole follow-up course dedicated to them called Joining Data in SQL for you to hone your database skills further!
