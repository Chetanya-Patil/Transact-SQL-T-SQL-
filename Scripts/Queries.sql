
---Differnt clauses we use in DATA Manipulation LANGUAGE

--Put the full section of SQL SERVER BASICS HERE from sqlserver tutorial


----------------------------------------------------------Section 1: QUERYING DATA

--select
SELECT * FROM PERSON;

----------------------------------------------------------Section 2: SORTING DATA

--order by
SELECT * FROM PERSON
ORDER BY city;

---------------------------------------------------------Section 3: LIMITING ROWS

--Using offset and fetch
SELECT * FROM sales.order_items
ORDER BY list_price DESC
OFFSET 4 ROWS
FETCH NEXT 10 ROWS ONLY;

--using top
SELECT TOP 10 * FROM sales.order_items;

--------------------------------------------------------Section 4: FILTERING DATA

--distinct
SELECT distinct customer_id FROM sales.customers;

--where
SELECT * FROM sales.customers
WHERE customer_id = 1;

--AND
SELECT * FROM sales.customers
WHERE city = 'Orchard Park' and state = 'NY';

--OR
SELECT * FROM sales.customers
WHERE city = 'Orchard Park' OR state = 'NY';

--IN
SELECT * FROM sales.customers
WHERE CITY IN ('Fairport','New York','Hollis');

--BETWEEN
SELECT * FROM sales.customers
WHERE customer_id between 50 and 100;

--like
SELECT * FROM sales.customers
WHERE first_name like 'a%';

--ALIAS
SELECT concat(first_name,' ',last_name) as full_name FROM sales.customers;

--------------------------------------------------------Section 5: JOINING TABLE


--joins

--------------------------------------------------------Section 6: GROUPING DATA

---group by 
---having

--------------------------------------------------------Section 7: SUBQUERY


--------------------------------------------------------Section 8: SET OPERATORS

--------------------------------------------------------Section 9: COMMON TABLE EXPRESSION

--common table expression
WITH CTE AS 
(
	SELECT * FROM sales.customers
	WHERE city = 'Orchard Park'
)
SELECT * FROM CTE;

--RECURSIVE CTE

--TABLE organization in assessment database

SELECT * FROM organization;


WITH mycte AS
(
   --Anchor part----it is giving us base result
	SELECT emp_id,name,manager_id
	FROM organization
	WHERE emp_id = 1

	UNION ALL

	--recursive part
	SELECT o.emp_id,o.name,o.manager_id
	FROM organization o
	INNER JOIN mycte m
	ON o.emp_id = m.manager_id
	
)
SELECT * FROM mycte 
ORDER BY manager_id;

--------------------------------------------------------Section 10: PIVOT







