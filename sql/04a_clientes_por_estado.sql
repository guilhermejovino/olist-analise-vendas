 -- quais estados tiveram mais clientes

use projeto_olist;

select customer_state, count( distinct  customer_unique_id) as total_clientes from customers group by customer_state order by total_clientes desc;
