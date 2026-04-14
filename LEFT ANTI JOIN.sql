-- LEFT ANTI JOIN
--	RETURNS ROWS FROM LEFT THAT HAS NO MATCH IN RIGHT

-- GET ALL CUSTOMERS WHO HAVEN'T PLACED ANY ORDERS

SELECT 
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
LEFT JOIN orders AS O
ON C.id = O.customer_id
WHERE O.customer_id IS NULL


SELECT *
FROM customers

SELECT * 
FROM orders