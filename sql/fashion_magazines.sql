SELECT customer_name AS Customer, PRINTF('$%.2f',SUM(price_per_month * subscription_length)) AS Amount_Due
FROM customers 
JOIN orders ON orders.customer_id = customers.customer_id
JOIN subscriptions ON subscriptions.subscription_id = orders.subscription_id
WHERE orders.order_status = "unpaid"
AND subscriptions.description = "Fashion Magazine"
GROUP BY customers.customer_name;