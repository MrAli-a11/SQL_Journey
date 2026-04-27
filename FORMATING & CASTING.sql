-- CASTING

-- FORMAT() (FORMAT DATE OR TIME VALUE)

SELECT 
	OrderId,
	CreationTime,
	FORMAT(CreationTime, 'dd') AS DD,
	FORMAT(CreationTime, 'ddd') AS DDD,
	FORMAT(CreationTime, 'dddd') AS DDDD,
	FORMAT(CreationTime, 'MM') AS MM,
	FORMAT(CreationTime, 'MMM') AS MMM,
	FORMAT(CreationTime, 'MMMM') AS MMMM,
	FORMAT(CreationTime, 'yy') AS YY,
	FORMAT(CreationTime, 'yyyy') AS YYYY,
	FORMAT(CreationTime, 'yy') AS YY,
	FORMAT(CreationTime, 'dd/MM/yyyy') INDIAN_FORMAT
FROM Sales.Orders


-- SHOW CreationTime USING THE FOLLOWING FORMAT => DAY WED JAN Q1 2025 12:34:56 PM


SELECT
	OrderID,
	CreationTime,
	'DAY ' + FORMAT(CreationTime, 'ddd MMM ') + 'Q' + DATENAME(QUARTER, CreationTime) + 
	FORMAT(CreationTime, ' yyyy hh:mm:ss tt') AS CUSTOM_FORMAT
FROM Sales.Orders



--

SELECT 
	FORMAT(OrderDate, 'MM yyyy') AS SHORT_DATE,
	COUNT(*)
FROM Sales.Orders
GROUP BY FORMAT(OrderDate, 'MM yyyy')

SELECT
	'NHI MALUM',
	FORMAT(GETDATE(), 'dd-MM-yyyy'),
	GETDATE()



	-- CONVERT() - (CONVERT A DATE OR TIME TO A DIFFERENT DATA TYPE & FORMATS THE VALUE)

	SELECT 
		CONVERT(INT, '123') AS STRING_CONVERTED,
		CONVERT(DATE, '2026-08-20') AS STRING_TO_DATE,
		CREATIONTIME,
		CONVERT(DATE, CreationTime) AS DATE
	FROM Sales.Orders



	-- CAST() - (CONVERT A VALUE TO A SPECIFIED DATA TYPE)

	SELECT
		CAST(1232.4563 AS VARCHAR)