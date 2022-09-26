/*filtering rows
BETWEEN (2)
Similar to the WHERE clause, the BETWEEN clause can be used with multiple AND and OR operators, so you can build up your queries and make them even more powerful!

For example, suppose we have a table called kids. We can get the names of all kids between the ages of 2 and 12 from the United States:

SELECT name
FROM kids
WHERE age BETWEEN 2 AND 12
AND nationality = 'USA';
Take a go at using BETWEEN with AND on the films data to get the title and release year of all Spanish language films released between 1990 and 2000 (inclusive) with budgets over $100 million. We have broken the problem into smaller steps so that you can build the query as you go along!
WHERE IN
As you've seen, WHERE is very useful for filtering results. However, if you want to filter based on many conditions, WHERE can get unwieldy. For example:

SELECT name
FROM kids
WHERE age = 2
OR age = 4
OR age = 6
OR age = 8
OR age = 10;
Enter the IN operator! The IN operator allows you to specify multiple values in a WHERE clause, making it easier and quicker to specify multiple OR conditions! Neat, right?

So, the above example would become simply:

ntroduction to NULL and IS NULL
In SQL, NULL represents a missing or unknown value. You can check for NULL values using the expression IS NULL. For example, to count the number of missing birth dates in the people table:

SELECT COUNT(*)
FROM people
WHERE birthdate IS NULL;
As you can see, IS NULL is useful when combined with WHERE to figure out what data you're missing.

Sometimes, you'll want to filter out missing values so you only get results which are not NULL. To do this, you can use the IS NOT NULL operator.

For example, this query gives the names of all people whose birth dates are not missing in the people table.

SELECT name
FROM people
WHERE birthdate IS NOT NULL;

NULL and IS NULL
Now that you know what NULL is and what it's used for, it's time for some practice!

LIKE and NOT LIKE
As you've seen, the WHERE clause can be used to filter text data. However, so far you've only been able to filter by specifying the exact text you're interested in. In the real world, often you'll want to search for a pattern rather than a specific text string.

In SQL, the LIKE operator can be used in a WHERE clause to search for a pattern in a column. To accomplish this, you use something called a wildcard as a placeholder for some other values. There are two wildcards you can use with LIKE:

The % wildcard will match zero, one, or many characters in text. For example, the following query matches companies like 'Data', 'DataC' 'DataCamp', 'DataMind', and so on:

SELECT name
FROM companies
WHERE name LIKE 'Data%';
The _ wildcard will match a single character. For example, the following query matches companies like 'DataCamp', 'DataComp', and so on:

SELECT name
FROM companies
WHERE name LIKE 'DataC_mp';
You can also use the NOT LIKE operator to find records that don't match the pattern you specify.

Got it? Let's practice!

Aggregate functions
Often, you will want to perform some calculation on the data in a database. SQL provides a few functions, called aggregate functions, to help you out with this.

For example,

SELECT AVG(budget)
FROM films;
gives you the average value from the budget column of the films table. Similarly, the MAX() function returns the highest budget:

SELECT MAX(budget)
FROM films;
The SUM() function returns the result of adding up the numeric values in a column:

SELECT SUM(budget)
FROM films;
You can probably guess what the MIN() function does! Now it's your turn to try out some SQL functions.

Combining aggregate functions with WHERE
Aggregate functions can be combined with the WHERE clause to gain further insights from your data.

For example, to get the total budget of movies made in the year 2010 or later:

SELECT SUM(budget)
FROM films
WHERE release_year >= 2010;
Now it's your turn!

note on arithmetic
In addition to using aggregate functions, you can perform basic arithmetic with symbols like +, -, *, and /.

So, for example, this gives a result of 12:

SELECT (4 * 3);
However, the following gives a result of 1:

SELECT (4 / 3);
What's going on here?

SQL assumes that if you divide an integer by an integer, you want to get an integer back. So be careful when dividing!

t's AS simple AS aliasing
You may have noticed in the first exercise of this chapter that the column name of your result was just the name of the function you used. For example,

SELECT MAX(budget)
FROM films;
gives you a result with one column, named max. But what if you use two functions like this?

SELECT MAX(budget), MAX(duration)
FROM films;
Well, then you'd have two columns named max, which isn't very useful!

To avoid situations like this, SQL allows you to do something called aliasing. Aliasing simply means you assign a temporary name to something. To alias, you use the AS keyword, which you've already seen earlier in this course.

For example, in the above example we could use aliases to make the result clearer:

SELECT MAX(budget) AS max_budget,
       MAX(duration) AS max_duration
FROM films;
Aliases are helpful for making results more readable!

Even more aliasing
Let's practice your newfound aliasing skills some more before moving on!

Recall: SQL assumes that if you divide an integer by an integer, you want to get an integer back.

This means that the following will erroneously result in 400.0:

SELECT 45 / 10 * 100.0;
This is because 45 / 10 evaluates to an integer (4), and not a decimal number like we would expect.

So when you're dividing make sure at least one of your numbers has a decimal place:

SELECT 45 * 100.0 / 10;
The above now gives the correct answer of 450.0 since the numerator (45 * 100.0) of the division is now a decimal!

ORDER BY
Congratulations on making it this far! You now know how to select and filter your results.

In this chapter you'll learn how to sort and group your results to gain further insight. Let's go!

In SQL, the ORDER BY keyword is used to sort results in ascending or descending order according to the values of one or more columns.

By default ORDER BY will sort in ascending order. If you want to sort the results in descending order, you can use the DESC keyword. For example,

SELECT title
FROM films
ORDER BY release_year DESC;
gives you the titles of films sorted by release year, from newest to oldest.

How do you think ORDER BY sorts a column of text values by default?

Sorting single columns (DESC)
To order results in descending order, you can put the keyword DESC after your ORDER BY. For example, to get all the names in the people table, in reverse alphabetical order:

SELECT name
FROM people
ORDER BY name DESC;
Now practice using ORDER BY with DESC to sort single columns in descending order!

Sorting multiple columns
ORDER BY can also be used to sort on multiple columns. It will sort by the first column specified, then sort by the next, then the next, and so on. For example,

SELECT birthdate, name
FROM people
ORDER BY birthdate, name;
sorts on birth dates first (oldest to newest) and then sorts on the names in alphabetical order. The order of columns is important!

Try using ORDER BY to sort multiple columns! Remember, to specify multiple columns you separate the column names with a comma.

/*

