# Projetos-Atividades_Python

## Visão geral

Repositório de estudos e exercícios em Python organizado por aulas, desafios e projetos de dados.

Inclui:
- scripts Python para lógica, condicionais, laços, funções e estruturas de dados;
- notebooks Jupyter para estudo interativo, visualização e análise de dados;
- bases de dados em `.csv` e `.xlsx` para análises e treinamentos;
- scripts SQL para criação, inserção e consulta de dados em projetos de data warehouse;
- projetos de machine learning e aplicação web com Streamlit.

## Estrutura do repositório

- `anotações/`: material de apoio e exemplos em Markdown.
- `arquivosUnicos/`: relatórios Power BI e scripts SQL independentes.
- `aula01/` a `aula17/`: exercícios de Python organizados por aula.
- `DESAFIO/`: projeto de análise de dados com notebooks e arquivos de apoio.
- `Projeto-DataWarehouse/`: modelo de dados, ETL e SQL para um pequeno data warehouse.
- `ProjetoIA/`: aplicação de machine learning com app Streamlit e script de treinamento.
- `requirements.txt`: dependências Python usadas no repositório.

## Conteúdo das pastas

### `anotações/`
- `exemplos.md`: notas de apoio e exemplos comentados.

### `arquivosUnicos/`
- `ANALISE.pbix` e `Projeto_vinho.pbix`: relatórios Power BI prontos.
- `BancoDeDadosJefferson.sql` e `concessionaria.sql`: scripts SQL avulsos.

### `aula01/`
- `hello.py`: programa inicial em Python.

### `aula02/`
- Exercícios básicos de leitura, operações matemáticas, dicionários, cálculo de idade, média, menor valor e identificação par/ímpar.

### `aula03/`
- `vogais.py`: identificação de vogais em texto.
- `extensao.ipynb`: conteúdo extra em notebook.

### `aula04/`
- Exercícios com operadores lógicos `and` e `or` para autenticação, autorização e regras de negócio.

### `aula05/`
- Exercícios sobre algoritmos, aritmética, entrada de dados, validação de senha, cálculo de signo, manipulação de turmas e loop `while`.

### `aula06/`
- `convite.py`: lógica condicional para controle de convites.

### `aula07/`
- `forMedia.py`, `forPar.py` e `forUm.py`: exemplos de laços `for`.

### `aula08/`
- `fibonacci.py`: implementação da sequência de Fibonacci.
- `login.py`: validação de login simples.

### `aula09/`
- `alturaAlunos.py`: análise de alturas de alunos.
- `listas.py`: exercícios com listas.

### `aula10/`
- `posto.py`: tomada de decisão para posto de combustível.
- `revisão.py` e `revisao2.py`: revisão de estruturas e lógica.

### `aula11/`
- `exercicio.py`: atividade de programação.

### `aula12/`
- Notebooks focados em dicionários, tuplas e desafios práticos.

### `aula13/`
- Notebooks de atividades e funções.

### `aula14/`
- Notebooks de atividades e o dataset `wine.csv`.

### `aula15/`
- Atividades em notebook e `vinhos_exercicio.xlsx`.

### `aula16/`
- Notebooks de estatística, correção e análise de vinho.

### `aula17/`
- Notebook de atividade e `explicacao_atividades.md`.

### `DESAFIO/`
- Notebooks de análise e visualização: `analise.ipynb`, `visualizacoes_insights.ipynb`, `documentacao_detalhada.ipynb`.
- Bases de dados: `vinhos_desafio.xlsx`, `vinhos_tratado.xlsx`.

### `Projeto-DataWarehouse/`
- `csv/`: dados de `categorias.csv`, `cliente.csv`, `data.csv`, `produtos.csv` e `vendas.csv`.
- `python/etl.ipynb`: notebook com pipeline de ETL.
- `readme/explicação.md`: documentação do projeto.
- `sql/`: scripts de criação de tabelas, inserção e consulta de dados.

### `ProjetoIA/`
- `python/app.py`: aplicativo Streamlit para previsão de desempenho.
- `python/train.py`: script de treinamento de modelo com `KNeighborsClassifier`.
- `python/Com lacunas/modelo_desempenho.pkl`: modelo treinado salvado em pickle.

## Como usar

1. Ative o ambiente virtual local no diretório do projeto.
2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```
3. Abra notebooks para estudo nas pastas `aula12/`, `aula13/`, `aula14/`, `aula15/`, `aula16/` e `DESAFIO/`.
4. Execute o projeto de ETL em `Projeto-DataWarehouse/python/etl.ipynb`.
5. Execute o app Streamlit do `ProjetoIA` com:
   ```bash
   streamlit run ProjetoIA/python/app.py
   ```

## Dependências

O arquivo `requirements.txt` inclui:
- `pandas>=2.0.0`
- `numpy>=1.24.0`
- `openpyxl>=3.1.0`
- `matplotlib>=3.7.0`
- `jupyter>=1.0.0`
- `ipython>=8.0.0`
- `joblib>=1.5.0`
- `scikit-learn>=1.8.0`
- `streamlit>=1.58.0`
- `PyMySQL>=1.2.0`
- `SQLAlchemy>=2.0.0`

## Observações

- A pasta `.venv/` é o ambiente virtual local e não deve ser versionada.
- Os notebooks `.ipynb` são usados para análise e aprendizado interativo.
- Os arquivos `.csv`, `.xlsx` e os scripts SQL suportam estudo prático de dados.
- O `ProjetoIA` une aplicação web e machine learning; o `Projeto-DataWarehouse` foca em ETL e modelagem de dados.
