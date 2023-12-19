SELECT product_id,
       COUNT(*) AS total_items_sold
FROM olist.order_items
GROUP BY product_id
LIMIT 5;
