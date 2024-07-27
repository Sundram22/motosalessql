-- Determine the top 3 most ordered pizza types based on revenue.

SELECT SUM(QUANTITY * PRICE) AS total_revenue
FROM ORDER_DETAILS
JOIN PIZZAS ON order_details.PIZZA_ID = pizzas.PIZZA_ID;