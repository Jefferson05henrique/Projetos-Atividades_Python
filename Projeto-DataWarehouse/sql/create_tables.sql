CREATE DATABASE loja_koisinhas;
USE loja_koisinhas;

CREATE TABLE dim_cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE dim_categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(100)
);

CREATE TABLE dim_produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100),
    id_categoria INT,
    
    FOREIGN KEY (id_categoria)
    REFERENCES dim_categoria(id_categoria)
);

CREATE TABLE dim_data (
    id_data INT PRIMARY KEY AUTO_INCREMENT,
    data_completa DATE,
    dia INT,
    mes INT,
    ano INT
);

CREATE TABLE fato_vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    
    id_cliente INT,
    id_produto INT,
    id_data INT,
    
    quantidade INT,
    valor_total DECIMAL(10,2),

    FOREIGN KEY (id_cliente)
    REFERENCES dim_cliente(id_cliente),

    FOREIGN KEY (id_produto)
    REFERENCES dim_produto(id_produto),

    FOREIGN KEY (id_data)
    REFERENCES dim_data(id_data)
);
