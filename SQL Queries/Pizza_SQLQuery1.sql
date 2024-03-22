
SELECT * FROM pizza_sales;

SELECT SUM(total_price) AS TOTAL_REVENUE FROM pizza_sales;

SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS AVG_ORDER_VALUE FROM pizza_sales;

SELECT SUM(quantity) AS TOTAL_ORDERS_SOLD FROM pizza_sales;

SELECT COUNT(DISTINCT order_id) AS TOTAL_ORDERS FROM pizza_sales;

SELECT CAST (CAST(SUM(quantity) AS DECIMAL (10,2)) /
CAST(COUNT(DISTINCT order_id) AS DECIMAL (10,2))  AS DECIMAL (10,2))
AS AVG_PIZZA_PER_ORDER
FROM pizza_sales;

SELECT DATENAME(DW, order_Date) AS ORDER_DAY,
COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

SELECT DATENAME(MONTH, order_date) AS MONTH_NAME,
COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY TOTAL_ORDERS DESC;

SELECT pizza_category, SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS PERCENTAGE_OF_TOTAL_SALES
FROM pizza_sales
GROUP BY pizza_category;

SELECT pizza_size, CAST (SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL (10,2)) AS PERCENTAGE_OF_TOTAL_SALES
FROM pizza_sales
GROUP BY pizza_size
ORDER BY PERCENTAGE_OF_TOTAL_SALES DESC;

SELECT TOP 5 pizza_name, SUM(total_price) AS TOTAL_REVENUE
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_REVENUE DESC;

SELECT TOP 5 pizza_name, CAST(SUM(total_price) AS DECIMAL (10,2)) AS TOTAL_REVENUE
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_REVENUE;

SELECT TOP 5 pizza_name, SUM(quantity) AS TOTAL_QTY
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_QTY DESC;

SELECT TOP 5 pizza_name, SUM(quantity) AS TOTAL_QTY
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_QTY;

SELECT TOP 5 pizza_name, COUNT(DISTINCT order_id) AS TOTAL_ORDERS
FROM pizza_sales
GROUP BY pizza_name
ORDER BY TOTAL_ORDERS;

SELECT pizza_category, SUM(quantity) AS TOTAL_PIZZAS_SOLD
FROM pizza_sales
GROUP BY pizza_category;



