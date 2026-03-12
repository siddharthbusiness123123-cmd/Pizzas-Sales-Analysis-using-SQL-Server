
--5q--List the top 5 most ordered pizza types along with their quantities.

select top 5 pizza_types.name,
sum(order_details.quantity)
as most_orders
from pizza_types
join pizzas
on pizzas.pizza_type_id=pizza_types.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.name
order by most_orders desc;
