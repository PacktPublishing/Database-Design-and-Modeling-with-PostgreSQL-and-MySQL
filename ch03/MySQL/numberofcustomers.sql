SELECT customer_state,
       COUNT(*) AS number_of_customers
FROM olist.customers
GROUP BY customer_state
ORDER BY number_of_customers DESC
LIMIT 10;
