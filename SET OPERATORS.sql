-- SET OPERATORS



-- UNION

SELECT 
	FirstName AS NAME,
	Lastname
FROM Sales.Customers

UNION

SELECT
	FirstName,
	LastName
FROM Sales.Employees

