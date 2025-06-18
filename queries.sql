-- Listar todos os pedidos com nome do cliente e produtos
SELECT 
    p.id_pedido, 
    c.nome AS cliente, 
    pr.nome AS produto, 
    i.quantidade
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN itens_pedido i ON p.id_pedido = i.id_pedido
JOIN produtos pr ON i.id_produto = pr.id_produto;

-- Total gasto por cliente
SELECT 
    c.nome,
    SUM(pr.preco * i.quantidade) AS total_gasto
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
JOIN itens_pedido i ON p.id_pedido = i.id_pedido
JOIN produtos pr ON i.id_produto = pr.id_produto
GROUP BY c.nome;
