SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales
WHERE
    order_date BETWEEN '2023-01-01' AND '2024-12-31'  
GROUP BY
    year, month
ORDER BY
    year, month;
