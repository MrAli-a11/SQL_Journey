-- GET ALL CUSTOMERS ALONG WITH THEIR ORDERS, BUT ONLY FOR CUSTOMERS WHO HAVE PALCED AN ORDERS

SELECT 
	C.id,
	C.first_name,
	O.order_id,
	O.sales
FROM customers AS C
INNER JOIN orders AS O
ON C.id = O.customer_id

	SELECT *
	FROM customers

	SELECT *
	FROM orders