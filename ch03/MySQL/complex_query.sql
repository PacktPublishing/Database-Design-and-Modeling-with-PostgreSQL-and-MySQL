SELECT c.customer_id,
       COUNT(o.order_id)
FROM olist.customers c
JOIN olist.orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id
LIMIT 5;
