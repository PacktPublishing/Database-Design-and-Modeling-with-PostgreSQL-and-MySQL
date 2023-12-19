SELECT product_id,
       SUM(price) AS total_sales
FROM olist.order_items
GROUP BY product_id
LIMIT 5;
