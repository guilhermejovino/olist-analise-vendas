----- Pergunta: qual é o ticket médio por pedido?
-- Critérios: apenas pedidos com status 'delivered'; considera só o valor dos produtos (price), sem frete.
-- Tabelas: order_items, orders.
-- Lógica: soma os itens de cada pedido (CTE) e depois calcula a média desses totais.
-- Resultado: R$ 137,04.

USE projeto_olist;

with total_por_pedido as (select sum(i.price) as total_pedido from order_items i join orders o on i.order_id = o.order_id where order_status = 'delivered' group by o.order_id
) select round(avg(total_pedido),2) as media from total_por_pedido;
