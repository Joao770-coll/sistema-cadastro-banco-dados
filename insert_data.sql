INSERT INTO clientes (nome, email, telefone) VALUES 
('João Silva', 'joao@email.com', '99999-9999'),
('Maria Lima', 'maria@email.com', '98888-8888');

INSERT INTO produtos (nome, preco) VALUES 
('Notebook', 3500.00),
('Mouse', 50.00);

INSERT INTO pedidos (id_cliente, data_pedido) VALUES 
(1, '2025-06-18'),
(2, '2025-06-17');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade) VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 2, 3);
