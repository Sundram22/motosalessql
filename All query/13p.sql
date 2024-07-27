-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pizza_types.category,
    (SUM(order_details.quantity * pizzas.price) / (SELECT 
            ROUND(SUM(order_details.QUANTITY * pizzas.PRICE),
                        2) AS total_revenue
        FROM
            ORDER_DETAILS
                JOIN
            PIZZAS ON order_details.PIZZA_ID = pizzas.PIZZA_ID)) * 100 AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.PIZZA_ID = pizzas.pizza_id
GROUP BY pizza_types.category
ORDER BY revenue DESC;