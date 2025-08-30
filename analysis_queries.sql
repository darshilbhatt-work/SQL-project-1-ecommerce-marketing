-- 1. Revenue by campaign
SELECT c.campaign_name, SUM(o.amount) AS total_revenue
FROM orders o
JOIN campaigns c ON o.campaign_id = c.campaign_id
GROUP BY c.campaign_name
ORDER BY total_revenue DESC;

-- 2. Best performing channel
SELECT c.channel, AVG(o.amount) AS avg_revenue
FROM orders o
JOIN campaigns c ON o.campaign_id = c.campaign_id
GROUP BY c.channel;

-- 3. Repeat purchase customers
SELECT customer_id, COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

-- 4. Best selling products
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 5. Customers signed up but never ordered
SELECT c.customer_id, c.first_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- 6. Average order value before and after campaigns
SELECT CASE 
           WHEN o.campaign_id IS NULL THEN 'No Campaign'
           ELSE 'Campaign'
       END AS order_type,
       AVG(amount) AS avg_order_value
FROM orders o
GROUP BY order_type;

-- 7. Customers churned after one order
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) = 1;

-- 8. Cohort: Signups vs Orders
SELECT DATE_FORMAT(c.signup_date, '%Y-%m') AS signup_month,
       COUNT(DISTINCT c.customer_id) AS new_signups,
       COUNT(DISTINCT o.customer_id) AS customers_who_ordered
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY signup_month;
