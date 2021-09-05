-- Exercise III
--Query the NAME field for all American cities in the CITY 
--table with populations larger than 120000. The CountryCode for America is USA.

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE= 'USA';

--Exercise III
--Query all columns (attributes) for every row in the CITY table. 

SELECT * FROM CITY; 

-- 