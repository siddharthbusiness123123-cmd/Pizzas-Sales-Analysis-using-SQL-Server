
--11q--Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category,
round(sum(pizzas.price*order_details.quantity)/(select round( sum(o.quantity*p.price),2) as total_revenue 
from order_details o
join pizzas p
on o.pizza_id=p.pizza_id) * 100,2)
as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by category
order by revenue desc;