/* SELECTing multiple columns
Well done! Now you know how to select single columns.

In the real world, you will often want to select multiple columns. Luckily, SQL makes this really easy. To select multiple columns from a table, simply separate the column names with commas!

For example, this query selects two columns, name and birthdate, from the people table:

SELECT name, birthdate
FROM people;
Sometimes, you may want to select all columns from a table. Typing out every column name would be a pain, so there's a handy shortcut:

SELECT *
FROM people;
If you only want to return a certain number of results, you can use the LIMIT keyword to limit the number of rows returned:

SELECT *
FROM people
LIMIT 10;
Before getting started with the instructions below, check out the column names in the films table!

SELECT DISTINCT
Often your results will include many duplicate values. If you want to select all the unique values from a column, you can use the DISTINCT keyword.

This might be useful if, for example, you're interested in knowing which languages are represented in the films table:

SELECT DISTINCT language
FROM films;
Remember, you can check out the data in the tables by clicking on the table name!
SELECT DISTINCT role
FROM roles;

Learning to COUNT
What if you want to count the number of employees in your employees table? The COUNT() function lets you do this by returning the number of rows in one or more columns.

For example, this code gives the number of rows in the people table:

SELECT COUNT(*)
FROM people;
How many records are contained in the reviews table?
/*

