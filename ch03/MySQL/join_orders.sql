SELECT o.order_id,
       oi.product_id
FROM olist.orders o
JOIN olist.order_items oi ON o.order_id = oi.order_id
LIMIT 10;
