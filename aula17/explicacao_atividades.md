# Explicação Detalhada - Análise de Dados de Vinhos

## Introdução

Este documento explica passo a passo como realizar análise de frequência em dados usando **pandas** e **numpy**. Vamos trabalhar com um dataset de vinhos (arquivo `vinhos_exercicio.xlsx`) que contém informações sobre tipos de uva, valores em USD, anos, e outras características.

---

## Parte 0: Preparação dos Dados

### Importação de bibliotecas
```python
import pandas as pd
import numpy as np
```

- **pandas**: Biblioteca para manipulação e análise de dados em estrutura de tabelas (DataFrames)
- **numpy**: Biblioteca para operações matemáticas e numéricas

### Carregamento do arquivo
```python
df = pd.read_excel('vinhos_exercicio.xlsx')
```

- Usa `pd.read_excel()` para ler arquivos Excel
- O arquivo é carregado em um DataFrame (estrutura de dados em formato de tabela)
- Estamos armazenando em `df` para usar nas análises seguintes

### Exploração inicial
```python
df.head()        # Mostra as primeiras 5 linhas
df.info()        # Mostra tipos de dados e informações gerais
df.columns       # Lista todas as colunas disponíveis
```

Resultado da exploração:
- Dataset com 25 registros (linhas)
- 7 colunas: year, grape_type, location_type, category, volume_hl, value_usd, location
- Colunas principais para nossas análises: `grape_type`, `value_usd`, `year`

---

## ATIVIDADE 1: Frequência de Tipos de Uva (grape_type)

### Objetivo
Criar uma tabela com frequência **absoluta**, **relativa (%)** e **acumulada** dos tipos de uva.

### Passo 1: Contar frequência absoluta
```python
freq_absoluta = df['grape_type'].value_counts().sort_index()
```

**O que acontece aqui:**
- `df['grape_type']` seleciona apenas a coluna "grape_type"
- `.value_counts()` conta quantas vezes cada valor aparece
- `.sort_index()` ordena os resultados alfabeticamente
- **Resultado**: Table (12), Wine (13)

### Passo 2: Calcular frequência relativa (%)
```python
freq_relativa = (freq_absoluta / len(df) * 100).round(2)
```

**O que acontece aqui:**
- `freq_absoluta` é dividida pelo total de registros `len(df)` (25)
- Multiplica por 100 para converter para percentual
- `.round(2)` arredonda para 2 casas decimais
- **Resultado**: Table (48.0%), Wine (52.0%)

### Passo 3: Calcular frequência acumulada
```python
freq_acumulada = freq_absoluta.cumsum()
```

**O que acontece aqui:**
- `.cumsum()` calcula a soma acumulada
- Vai somando valores conforme desce a coluna
- **Resultado**: Table (12), Wine (25)

### Passo 4: Criar tabela final
```python
tabela_atividade1 = pd.DataFrame({
    'Frequência Absoluta': freq_absoluta,
    'Frequência Relativa (%)': freq_relativa,
    'Frequência Acumulada': freq_acumulada
})
```

**O que acontece aqui:**
- Cria um novo DataFrame combinando as 3 frequências
- Cada coluna contém uma das análises
- Organizamos tudo em um formato fácil de visualizar

### Resultado Final
| grape_type | Frequência Absoluta | Frequência Relativa (%) | Frequência Acumulada |
|-----------|-------------------|----------------------|-------------------|
| Table     | 12                | 48.0                 | 12                |
| Wine      | 13                | 52.0                 | 25                |

**Interpretação:**
- Table representa 48% dos vinhos
- Wine representa 52% dos vinhos
- A distribuição é bastante equilibrada

---

## ATIVIDADE 2: Quartis de Valor em USD (value_usd)

### Objetivo
Dividir os valores em USD em 4 classes iguais (quartis) e analisar frequências.

### O que é um Quartil?
Quartis dividem os dados em 4 partes iguais:
- **Q1 (25%)**: Os 25% de valores mais baixos
- **Q2 (50%)**: Do 25% ao 50%
- **Q3 (75%)**: Do 50% ao 75%
- **Q4 (100%)**: Os 25% de valores mais altos

### Passo 1: Dividir em quartis com pd.qcut()
```python
quartis = pd.qcut(df['value_usd'], q=4, labels=['Q1 (25%)', 'Q2 (50%)', 'Q3 (75%)', 'Q4 (100%)'])
```

**O que acontece aqui:**
- `pd.qcut()` divide os dados em quartis
- `q=4` significa dividir em 4 partes iguais
- `labels=` fornece nomes legíveis para cada quartil
- **Resultado**: Cada valor em value_usd recebe uma etiqueta Q1, Q2, Q3 ou Q4

### Passo 2: Contar frequência absoluta
```python
freq_absoluta_quartil = quartis.value_counts().sort_index()
```

**O que acontece aqui:**
- Conta quantos valores caem em cada quartil
- `.sort_index()` ordena de Q1 a Q4
- **Resultado**: Q1 (8), Q2 (6), Q3 (5), Q4 (6)

### Passo 3: Calcular frequência relativa (%)
```python
freq_relativa_quartil = (freq_absoluta_quartil / len(df) * 100).round(2)
```

**O que acontece aqui:**
- Mesma lógica da atividade 1
- Divide por 25 (total de registros) e multiplica por 100
- **Resultado**: Q1 (32%), Q2 (24%), Q3 (20%), Q4 (24%)

### Passo 4: Criar tabela final
```python
tabela_atividade2 = pd.DataFrame({
    'Frequência Absoluta': freq_absoluta_quartil,
    'Frequência Relativa (%)': freq_relativa_quartil
})
```

### Resultado Final
| Quartil | Frequência Absoluta | Frequência Relativa (%) |
|--------|-------------------|----------------------|
| Q1 (25%) | 8 | 32.0 |
| Q2 (50%) | 6 | 24.0 |
| Q3 (75%) | 5 | 20.0 |
| Q4 (100%) | 6 | 24.0 |

**Interpretação:**
- A maioria dos vinhos (32%) está no primeiro quartil (valores mais baixos)
- Conforme aumenta o preço, diminui a quantidade de vinhos
- Indica que há mais vinhos baratos do que vinhos caros

---

## ATIVIDADE 3: Frequência de Anos (year) por Faixas

### Objetivo
Agrupar os anos em 3 faixas específicas e analisar frequências.

### Passo 1: Criar função para categorizar anos
```python
def categorizar_ano(ano):
    if 2014 <= ano <= 2018:
        return '2014-2018'
    elif 2019 <= ano <= 2022:
        return '2019-2022'
    elif 2023 <= ano <= 2027:
        return '2023-2027'
    else:
        return 'Fora da faixa'
```

**O que acontece aqui:**
- Define uma função que recebe um ano como entrada
- Testa em qual faixa o ano se encaixa
- Retorna a faixa correspondente
- Esta função será aplicada a cada linha da coluna year

### Passo 2: Aplicar função a todos os anos
```python
faixas_ano = df['year'].apply(categorizar_ano)
```

**O que acontece aqui:**
- `.apply()` executa a função em cada valor da coluna year
- Cria uma nova série chamada `faixas_ano` com as categorias
- Exemplo: 2018 → '2014-2018', 2020 → '2019-2022'

### Passo 3: Contar frequência absoluta
```python
freq_absoluta_faixa = faixas_ano.value_counts().sort_index()
```

**O que acontece aqui:**
- Conta quantos anos caem em cada faixa
- `.sort_index()` ordena as faixas
- **Resultado**: 2014-2018 (4), 2019-2022 (16), 2023-2027 (5)

### Passo 4: Calcular frequência relativa (%)
```python
freq_relativa_faixa = (freq_absoluta_faixa / len(df) * 100).round(2)
```

**O que acontece aqui:**
- Mesma lógica das atividades anteriores
- **Resultado**: 2014-2018 (16%), 2019-2022 (64%), 2023-2027 (20%)

### Passo 5: Calcular frequência acumulada
```python
freq_acumulada_faixa = freq_absoluta_faixa.cumsum()
```

**O que acontece aqui:**
- Soma acumulada conforme desce pela faixa
- **Resultado**: 2014-2018 (4), 2019-2022 (20), 2023-2027 (25)

### Passo 6: Criar tabela final
```python
tabela_atividade3 = pd.DataFrame({
    'Frequência Absoluta': freq_absoluta_faixa,
    'Frequência Relativa (%)': freq_relativa_faixa,
    'Frequência Acumulada': freq_acumulada_faixa
})
```

### Resultado Final
| Faixa | Frequência Absoluta | Frequência Relativa (%) | Frequência Acumulada |
|-------|-------------------|----------------------|-------------------|
| 2014-2018 | 4 | 16.0 | 4 |
| 2019-2022 | 16 | 64.0 | 20 |
| 2023-2027 | 5 | 20.0 | 25 |

**Interpretação:**
- A maioria dos dados (64%) é de 2019-2022
- Período menor representação é 2014-2018 (16%)
- Pode indicar maior coleta de dados em anos recentes

---

## Conceitos Importantes

### Frequência Absoluta
- É o **número total** de vezes que um valor aparece
- Não é percentual, é contagem real
- Exemplo: 12 vinhos do tipo Table

### Frequência Relativa
- É a **proporção** em relação ao total
- Geralmente expressa em percentual
- Fórmula: (frequência absoluta / total) × 100
- Exemplo: (12 / 25) × 100 = 48%

### Frequência Acumulada
- É a **soma acumulada** das frequências absolutas
- Mostra o total até aquele ponto
- Útil para entender progressão dos dados
- Exemplo: 12, depois 12+13=25

### pd.qcut() vs pd.cut()
- **qcut()**: Divide em partes de **igual quantidade** (quartis)
- **cut()**: Divide por **intervalos de igual tamanho**

---

## Dicas para Iniciantes

1. **Sempre explore os dados primeiro** com `head()` e `info()`
2. **Use `.sort_index()`** para manter dados organizados
3. **Use `.round(2)`** para facilitar leitura de números decimais
4. **Crie DataFrames** para organizar resultados em tabelas
5. **Adicione comentários** no código para documentar lógica
6. **Teste cada passo** isoladamente para entender melhor

---

## Funções Principais Utilizadas

| Função | Descrição |
|--------|-----------|
| `df[coluna]` | Seleciona uma coluna |
| `.value_counts()` | Conta frequência de valores |
| `.cumsum()` | Calcula soma acumulada |
| `.apply(função)` | Aplica função a cada elemento |
| `pd.qcut()` | Divide em quartis (partes iguais) |
| `.sort_index()` | Ordena por índice |
| `.round(n)` | Arredonda para n casas decimais |
| `len()` | Conta total de elementos |
| `pd.DataFrame()` | Cria tabela estruturada |

---

## Próximas Aprendizagens

Após dominar frequências, você pode aprender:
- **Estatística Descritiva**: média, mediana, desvio padrão
- **Visualizações**: gráficos de barras, pizza, histogramas
- **Análise Bivariada**: relação entre duas variáveis
- **Testes Estatísticos**: testes de hipóteses
