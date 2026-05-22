# Projeto DataWarehouse - Explicação Detalhada

## Objetivo do projeto
Este projeto apresenta um exemplo simples de um Data Warehouse para uma loja fictícia chamada "loja_koisinhas". A ideia é demonstrar:
- Criação de um modelo dimensional com tabelas de dimensão e tabela fato.
- Popular as tabelas com dados de clientes, produtos, categorias e datas.
- Executar consultas analíticas que respondem perguntas de negócio.
- Testar o processo de carga / ETL com limpeza de tabelas e validação.

## Estrutura do projeto
- `csv/`: possíveis arquivos de origem, usados para importação de dados.
- `powerBi/`: área para relatórios e visualizações em Power BI.
- `python/`: scripts ou notebooks que podem suportar o processo ETL.
- `readme/explicação.md`: este arquivo de documentação.
- `sql/`: scripts SQL para criar, inserir e consultar o Data Warehouse.

## Arquivos SQL principais
### `sql/create_tables.sql`
Esse arquivo cria o banco de dados e as tabelas necessárias.
- `CREATE DATABASE loja_koisinhas;` cria o banco de dados.
- `USE loja_koisinhas;` seleciona o banco de dados para rodar as instruções seguintes.

Tabelas de dimensão:
- `dim_cliente`: armazena informações de clientes.
  - `id_cliente INT PRIMARY KEY AUTO_INCREMENT`: chave primária gerada automaticamente.
  - `nome_cliente VARCHAR(100)`: nome do cliente.
  - `cidade VARCHAR(100)`: cidade do cliente.

- `dim_categoria`: armazena categorias de produtos.
  - `id_categoria INT PRIMARY KEY AUTO_INCREMENT`: chave primária.
  - `nome_categoria VARCHAR(100)`: nome da categoria.

- `dim_produto`: armazena os produtos e relaciona cada produto a uma categoria.
  - `id_produto INT PRIMARY KEY AUTO_INCREMENT`.
  - `nome_produto VARCHAR(100)`.
  - `id_categoria INT`: chave estrangeira para `dim_categoria`.
  - `FOREIGN KEY (id_categoria) REFERENCES dim_categoria(id_categoria)`: garante integridade referencial.

- `dim_data`: armazena datas e componentes de tempo.
  - `id_data INT PRIMARY KEY AUTO_INCREMENT`.
  - `data_completa DATE`: data no formato completo.
  - `dia INT`, `mes INT`, `ano INT`: pedaços da data usados para análises temporais.

Tabela fato:
- `fato_vendas`: armazena as medidas de vendas.
  - `id_venda INT PRIMARY KEY AUTO_INCREMENT`.
  - `id_cliente INT`, `id_produto INT`, `id_data INT`: referências às dimensões.
  - `quantidade INT`: unidades vendidas.
  - `valor_total DECIMAL(10,2)`: valor total da venda.
  - `FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente)`.
  - `FOREIGN KEY (id_produto) REFERENCES dim_produto(id_produto)`.
  - `FOREIGN KEY (id_data) REFERENCES dim_data(id_data)`.

### `sql/insert_clientes.sql`
Esse script insere clientes na dimensão de clientes.
- Ele adiciona `nome_cliente`, `cidade` e `estado`.
- O `ALTER TABLE dim_cliente ADD COLUMN estado VARCHAR(50);` atualiza a estrutura para incluir o estado do cliente.
- O `SELECT * FROM dim_cliente;` no final serve para verificar os dados inseridos.

### `sql/insert_datas.sql`
Insere datas na dimensão de tempo.
- Cada linha contém `data_completa`, `dia`, `mes` e `ano`.
- Isso é útil para permitir análises por dia, mês e ano sem depender apenas de funções de data na consulta.
- O `SELECT * FROM dim_data;` valida o carregamento.

### `sql/insert_produtos.sql`
Insere categorias e produtos.
- Primeiro, limpa as tabelas `dim_produto` e `dim_categoria` com `TRUNCATE TABLE` e desativa temporariamente as verificações de chave estrangeira (`SET FOREIGN_KEY_CHECKS = 0`) para evitar erros.
- Insere categorias em `dim_categoria`.
- Em seguida, insere produtos em `dim_produto`, relacionando cada produto ao seu `id_categoria`.
- Há grupos comentados (`-- INFORMÁTICA`, `-- PERIFÉRICOS`, etc.) que funcionam como etiquetas explicativas para organizar os dados.
- O `SELECT * FROM dim_categoria;` e `select * from dim_produto;` ajudam a conferir o resultado.

### `sql/insert_fato_vendas.sql`
Carrega a tabela fato com vendas.
- Insere valores de `id_cliente`, `id_produto`, `id_data`, `quantidade` e `valor_total`.
- Cada linha corresponde a uma venda realizada.
- O `SELECT * FROM fato_vendas;` final valida a carga.

### `sql/consultas.sql`
Contém consultas analíticas típicas para um Data Warehouse.
Cada bloco apresenta uma pergunta de negócio e uma consulta SQL que responde a ela.

Consultas e suas funções:
- `SELECT ... FROM ...`: recupera dados.
- `JOIN`: combina tabelas relacionadas.
- `GROUP BY`: agrupa linhas por um campo para aplicar funções agregadas.
- `SUM()`: soma valores, usada para total vendido e faturamento.
- `AVG()`: calcula média, usada para ticket médio das vendas.
- `COUNT(*)`: conta o número de registros, usada para total de clientes.
- `ORDER BY ... DESC`: ordena resultados em ordem decrescente.
- `LIMIT 5`: restringe o resultado aos 5 maiores.
- `HAVING`: filtra resultados após agregação (por exemplo, clientes com gasto maior que 3000).

Perguntas respondidas em `consultas.sql`:
- Qual produto vendeu mais?
- Qual categoria fatura mais?
- Quais são os melhores clientes?
- Qual mês teve maior faturamento?
- Qual cidade comprou mais?
- Quais são os 5 produtos mais vendidos?
- Qual é o ticket médio das vendas?
- Qual é o total de clientes?
- Quais clientes gastaram mais de 3000?

### `sql/teste_etl.sql`
Esse arquivo é usado para validar o processo ETL e a limpeza das tabelas.
- `SHOW DATABASES;` e `USE loja_koisinhas;` confirmam o ambiente correto.
- `TRUNCATE TABLE ...` remove dados de teste de todas as tabelas.
- `SET FOREIGN_KEY_CHECKS = 0;` e `SET FOREIGN_KEY_CHECKS = 1;` desativam e reativam a checagem de integridade referencial, permitindo truncar tabelas com chaves estrangeiras.
- Os vários `SELECT * FROM ...` ajudam a conferir se as tabelas foram limpas corretamente.
- É um teste típico para garantir que a carga do Data Warehouse pode ser reiniciada sem erros.

## Explicação detalhada das funções e tags usadas
### Funções SQL usadas
- `CREATE DATABASE`: cria um novo banco de dados.
- `CREATE TABLE`: cria uma nova tabela com colunas e tipos de dados.
- `AUTO_INCREMENT`: gera automaticamente um valor único para chaves primárias.
- `PRIMARY KEY`: define a coluna como identificador único da linha.
- `FOREIGN KEY`: define uma relação entre tabelas e garante integridade.
- `INSERT INTO ... VALUES`: insere novas linhas na tabela.
- `SELECT`: consulta dados.
- `JOIN`: conecta tabelas a partir de chaves iguais.
- `GROUP BY`: agrupa resultados para uso com funções agregadas.
- `SUM()`: soma valores de uma coluna.
- `AVG()`: calcula média de valores.
- `COUNT(*)`: conta todas as linhas de uma tabela ou grupo.
- `ORDER BY ... DESC`: ordena em ordem decrescente.
- `LIMIT`: limita a quantidade de resultados retornados.
- `HAVING`: filtra grupos após agregação.
- `TRUNCATE TABLE`: apaga todos os registros de uma tabela rapidamente.
- `SET FOREIGN_KEY_CHECKS = 0/1`: desativa/ativa a verificação de chaves estrangeiras.

### Tags e comentários no SQL
Comentários no SQL são feitos com `--`.
Eles não são executados e servem para:
- explicar o objetivo da consulta;
- indicar seções de dados (`-- INFORMÁTICA`, `-- ÁUDIO`, etc.);
- descrever a lógica de negócio (`-- qual produto vendeu mais?`, `-- ticket médio das vendas`).

Esses comentários funcionam como documentação inline e tornam o script mais legível.

## Conclusão
O projeto é um exemplo de Data Warehouse relacional com:
- dimensões (`dim_cliente`, `dim_categoria`, `dim_produto`, `dim_data`);
- fato (`fato_vendas`);
- scripts de criação, carga e análise;
- validação ETL por meio de truncamento e consultas de conferência.

A explicação aqui detalha as tabelas, os principais comandos SQL, os cálculos usados e a finalidade de cada arquivo presente no projeto.