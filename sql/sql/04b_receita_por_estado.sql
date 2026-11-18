-- receita por estado

use projeto_olist;

select customer_state, Round(sum(price)) as total from order_items i join orders o on i.order_id = o.order_id join customers c on o.customer_id = c.customer_id where order_status = 'delivered' group by customer_state order by total desc;
