-- Retrieve the total number of orders placed.

select * from orders;

SELECT COUNT(*) AS total_orders
FROM ORDERS;

select count(order_id) from orders;
