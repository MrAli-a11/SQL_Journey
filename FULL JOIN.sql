-- FULL JOIN
-- RETURN ALL ROWS FROM BOTH TABLES

-- GET ALL CUSTOMERS AND ALL ORDERS EVEN IF THERES NO MATCH

SELECT 
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
FULL JOIN orders AS O
ON C.id = O.customer_id

SELECT *
FROM customers

SELECT *
FROM orders