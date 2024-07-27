-- Calculate the total revenue generated from pizza sales.

SELECT SUM(QUANTITY * PRICE) AS total_revenue
FROM ORDER_DETAILS;

SELECT SUM(QUANTITY * PRICE) AS total_revenue
FROM ORDER_DETAILS
JOIN PIZZAS ON order_details.PIZZA_ID = pizzas.PIZZA_ID;

SELECT round(SUM(order_details.QUANTITY * pizzas.PRICE),2) AS total_revenue
FROM ORDER_DETAILS
JOIN PIZZAS ON order_details.PIZZA_ID = pizzas.PIZZA_ID;

-- how to beautify the query - control + b

SELECT 
    ROUND(SUM(order_details.QUANTITY * pizzas.PRICE),
            2) AS total_revenue
FROM
    ORDER_DETAILS
        JOIN
    PIZZAS ON order_details.PIZZA_ID = pizzas.PIZZA_ID;
