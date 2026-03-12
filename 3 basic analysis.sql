
--3q--Identify the highest-priced pizza.

select top 1 pizza_types.name,pizzas.price
as highest_price
from pizza_types
join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc ;
