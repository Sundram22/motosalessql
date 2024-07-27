-- Group the orders by date and calculate the average number of pizzas ordered per day.

select avg(quantity) as avg_pizza_per_day from 
(select orders.ORDER_DATE, sum(order_details.quantity) as quantity
from orders join order_details
on orders.ORDER_ID = order_details.ORDER_ID
group by orders.ORDER_DATE) as order_quantity;