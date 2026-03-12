
--7q--Determine the distribution of orders by hour of the day.

SELECT 
    DATEPART(HOUR, [time]) AS order_hour,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY DATEPART(HOUR, [time])
ORDER BY total_orders desc;
