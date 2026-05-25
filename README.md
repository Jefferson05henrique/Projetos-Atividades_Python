# Projetos-Atividades_Python

## Visão geral

Este repositório reúne exercícios e projetos de Python estruturados por aulas, com foco em lógica de programação, análise de dados e ETL.

Ele contém:
- scripts Python para estudos de algoritmos, condicionais, laços e funções;
- notebooks Jupyter para exercícios interativos, desafios e análises;
- bases de dados em `.csv` e `.xlsx` para exercícios de análise;
- scripts SQL para criação e carregamento de dados em um projeto de Data Warehouse;
- relatórios Power BI para visualização de dashboards.

## Estrutura do repositório

- `anotações/`: material de apoio em Markdown.
- `arquivosUnicos/`: relatórios Power BI e scripts SQL independentes.
- `aula01/` a `aula17/`: exercícios de Python por aula.
- `aula09/`: atividades específicas com listas e análise de alturas.
- `DESAFIO/`: projeto de análise de dados em notebooks.
- `Projeto-DataWarehouse/`: projeto de data warehouse com dados, ETL e SQL.
- `requirements.txt`: dependências Python usadas no projeto.

## Conteúdo por seção

### `anotações/`
- `exemplos.md`: notas e exemplos de estudo.

### `arquivosUnicos/`
- `ANALISE.pbix` e `Projeto_vinho.pbix`: relatórios Power BI.
- `BancoDeDadosJefferson.sql` e `concessionaria.sql`: scripts SQL avulsos.

### `aula01/`
- `hello.py`: primeiro programa em Python com saída de texto.

### `aula02/`
- Exercícios básicos de operações, uso de dicionários, cálculo de idade, média, menor valor e verificação par/ímpar.

### `aula03/`
- `vogais.py`: detecção de vogais em um texto.
- `extensao.ipynb`: notebook de conteúdo extra.

### `aula04/`
- Exercícios com operadores lógicos `and` e `or` aplicados a login, autorização e cenários empresariais.

### `aula05/`
- Exercícios de algoritmo, aritmética, leitura de dados, validação de senha, cálculo de signo, manipulação de turmas e `while`.

### `aula06/`
- `convite.py`: exemplo de lógica condicional para convite.

### `aula07/`
- `forMedia.py`, `forPar.py` e `forUm.py`: exemplos de laços `for`.

### `aula08/`
- `fibonacci.py`: sequência de Fibonacci.
- `login.py`: validação de login.

### `aula09/`
- `alturaAlunos.py`: análise de alturas de alunos.
- `listas.py`: exercícios de listas.

### `aula10/`
- `posto.py`: decisão de posto de gasolina.
- `revisão.py` e `revisao2.py`: revisão de conceitos.

### `aula11/`
- `exercicio.py`: atividade geral da aula.

### `aula12/`
- Notebooks sobre dicionários, tuplas e desafio prático.

### `aula13/`
- Notebooks de atividades e funções.

### `aula14/`
- Atividades em notebook e o dataset `wine.csv`.

### `aula15/`
- Atividades em notebook e `vinhos_exercicio.xlsx`.

### `aula16/`
- Notebooks de estatística, correção e análise de vinho (`vinhos.xlsx`, `vinhos_tratamento.xlsx`).

### `aula17/`
- Notebook de atividade e explicação em Markdown.

### `DESAFIO/`
- Notebooks de análise e visualizações.
- Planilhas `vinhos_desafio.xlsx` e `vinhos_tratado.xlsx`.

### `Projeto-DataWarehouse/`
- `csv/`: bases de dados de categorias, clientes, datas, produtos e vendas.
- `python/`: notebook `etl.ipynb` com fluxo de ETL.
- `readme/`: explicação do projeto de data warehouse.
- `sql/`: scripts de criação de tabelas, inserção de dados e consultas.

## Dependências

O arquivo `requirements.txt` define as bibliotecas Python utilizadas:

- `pandas>=2.0.0`
- `numpy>=1.24.0`
- `openpyxl>=3.0.0`
- `matplotlib>=3.7.0`
- `jupyter>=1.0.0`
- `ipython>=8.0.0`

## Observações

- Os notebooks `.ipynb` permitem estudo interativo e análise de dados.
- As bases de dados em `.csv` e `.xlsx` suportam exercícios e projetos de análise.
- Os scripts SQL do `Projeto-DataWarehouse` modelam e carregam um pequeno data warehouse.
- A pasta `.venv/` é o ambiente virtual local e não deve ser versionada.
