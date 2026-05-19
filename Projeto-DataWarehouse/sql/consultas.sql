-- qual produto vendeu mais?

SELECT 
    p.nome_produto,
    SUM(f.quantidade) AS total_vendido

FROM fato_vendas f

JOIN dim_produto p
ON f.id_produto = p.id_produto

GROUP BY p.nome_produto

ORDER BY total_vendido DESC;

-- qual categoria fatura mais? 

SELECT 
    c.nome_categoria,
    SUM(f.valor_total) AS faturamento

FROM fato_vendas f

JOIN dim_produto p
ON f.id_produto = p.id_produto

JOIN dim_categoria c
ON p.id_categoria = c.id_categoria

GROUP BY c.nome_categoria

ORDER BY faturamento DESC;

-- melhores clientes

SELECT 
    c.nome_cliente,
    SUM(f.valor_total) AS total_gasto

FROM fato_vendas f

JOIN dim_cliente c
ON f.id_cliente = c.id_cliente

GROUP BY c.nome_cliente

ORDER BY total_gasto DESC;

-- mês que mais vendeu

SELECT 
    d.mes,
    SUM(f.valor_total) AS faturamento

FROM fato_vendas f

JOIN dim_data d
ON f.id_data = d.id_data

GROUP BY d.mes

ORDER BY faturamento DESC;

-- cidade que mais comprou

SELECT 
    c.cidade,
    SUM(f.valor_total) AS total_compras

FROM fato_vendas f

JOIN dim_cliente c
ON f.id_cliente = c.id_cliente

GROUP BY c.cidade

ORDER BY total_compras DESC;