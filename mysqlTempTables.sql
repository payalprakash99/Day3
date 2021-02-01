CREATE TEMPORARY TABLE MonthlyAverageSales
SELECT MONTH(orders.order_date) AS months,
orders.store_id AS store_Id,
stores.store_name AS store_Name,
ROUND((COUNT(orders.order_id))/3) AS Average_Orders 
FROM orders 
LEFT JOIN stores 
ON stores.store_id=orders.store_id
where YEAR(orders.order_date) IN ( 2017,2018,2019)
GROUP BY MONTH(orders.order_date)
ORDER BY MONTH(orders.order_date);

CREATE TEMPORARY TABLE MontlyAverageSales2020
SELECT MONTH(orders.order_date) AS months,
YEAR(orders.order_date) AS years,
orders.store_id AS StoreID,
stores.store_name AS storeName,
COUNT(orders.order_id) AS OrderCount 
FROM orders 
LEFT JOIN stores
ON stores.store_id=orders.store_id
WHERE YEAR(orders.order_date) = 2020
GROUP BY MONTH(orders.order_date)
ORDER BY MONTH(orders.order_date);

SELECT t2.months AS months,
t2.years as Years,
t2.orderCount as OrderCount,
t1.Average_Orders as Average_Orders,
case
	when(orderCount > t1.Average_Orders) then 'Increase'
    when(orderCount < t1.Average_Orders) then  'Reduce'
END AS SalesDirection
FROM table2 t2
LEFT JOIN table1 t1
ON t2.months = t1.months
GROUP BY months
ORDER BY months;
