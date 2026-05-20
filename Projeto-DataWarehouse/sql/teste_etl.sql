SHOW DATABASES;
USE loja_koisinhas;

SELECT * FROM dim_cliente;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE fato_vendas;
TRUNCATE TABLE dim_produto;
TRUNCATE TABLE dim_categoria;
TRUNCATE TABLE dim_cliente;
TRUNCATE TABLE dim_data;

SET FOREIGN_KEY_CHECKS = 1;

select * from dim_categoria;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE dim_categoria;

SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM dim_categoria;

set foreign_key_checks = 0;

truncate table dim_cliente;

set foreign_key_checks = 1;

SELECT * FROM dim_cliente;

set foreign_key_checks = 0;

truncate table dim_produto;

set foreign_key_checks = 1;

select * from dim_produto;

SELECT * FROM dim_cliente;
SELECT * FROM dim_produto;

TRUNCATE TABLE fato_vendas;

select * from fato_vendas;

SELECT * FROM dim_data;