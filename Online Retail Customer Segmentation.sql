USE online_retail;

SELECT *
FROM online_retail;

-- Amount of Customers

SELECT COUNT(DISTINCT CustomerID) AS total_customers
FROM online_retail;

-- Orders Per Customers

SELECT CustomerID, COUNT(DISTINCT InvoiceNo) AS orders
FROM online_retail
GROUP BY CustomerID
ORDER BY orders DESC;

-- Total Spending Per Customer

SELECT CustomerID, ROUND(SUM(Quantity * UnitPrice), 2) As total_spent
FROM online_retail
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- AVG order value per customer

SELECT CustomerID, ROUND(AVG(order_value), 2) AS avg_order
FROM (
	SELECT CustomerID, InvoiceNo, SUM(Quantity * UnitPrice) AS order_value
    FROM online_retail
    WHERE Quantity > 0
    GROUP BY InvoiceNo, CustomerID
) orders
GROUP BY CustomerID
ORDER BY avg_order DESC;

-- Customer type (One time, occaional, or frequent)

SELECT CustomerID, total_orders,
CASE
	WHEN total_orders = 1 THEN "One Time"
    WHEN total_orders Between 2 AND 5 THEN "Occasional"
    ELSE "Frequent"
END AS customer_type
FROM (
	SELECT CustomerID, COUNT(DISTINCT InvoiceNo) As total_orders
    FROM online_retail
    GROUP BY CustomerID
) customer_orders
