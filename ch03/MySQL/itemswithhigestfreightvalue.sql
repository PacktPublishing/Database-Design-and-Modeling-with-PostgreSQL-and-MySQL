SELECT order_id,
       product_id,
       freight_value
FROM olist.order_items
ORDER BY freight_value DESC
LIMIT 10;
