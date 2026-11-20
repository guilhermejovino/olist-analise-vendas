# Análise de Vendas de E-commerce Brasileiro (Olist)

Projeto de análise de dados de ponta a ponta com **MySQL, Excel e Power BI**, usando dados reais de um marketplace brasileiro. O objetivo é responder perguntas de negócio sobre vendas, produtos, clientes, entrega e satisfação.

> **Status:** em andamento. A tabela de [Perguntas de negócio](#perguntas-de-negócio) mostra o que já foi concluído.

---

## Contexto de negócio

A Olist conecta pequenos comerciantes a grandes marketplaces no Brasil. Neste projeto, assumo o papel de analista de dados que precisa ajudar a gestão a entender:

- Como as vendas evoluem ao longo do tempo
- Onde estão os clientes e a receita
- Quais categorias e vendedores mais contribuem
- Se a qualidade da entrega afeta a satisfação do cliente

## Perguntas de negócio

| # | Pergunta | Ferramenta | Status |
|---|---|---|---|
| 1 | Como evoluíram a receita e o número de pedidos mês a mês? | SQL | ⏳ |
| 2 | O ticket médio dos pedidos entregues é de R$ 137,04”. ✅
| 3 | Quais são as 10 categorias que mais geram receita? | SQL | ⏳ |
| 4 | Quais estados concentram mais clientes e mais receita? | SQL | ✅ |
| 5 | Qual a porcentagem de pedidos entregues com atraso e o tempo médio de entrega? | SQL | ⏳ |
| 6 | O atraso na entrega afeta a nota de avaliação? | SQL | ⏳ |
| 7 | Quantos clientes compraram mais de uma vez? | SQL | ⏳ |
| 8 | Quem são os 10 vendedores que mais faturam e como é o desempenho deles? | SQL | ⏳ |
| 9 | Quais formas de pagamento e parcelamentos são mais usados? | SQL | ⏳ |

## Principais insights

> Esta seção será atualizada conforme as análises forem concluídas.

- **Concentração geográfica:** São Paulo é o estado com mais clientes únicos (cerca de 40 mil) e também o que mais gera receita (aproximadamente R$ 5,07 milhões em pedidos entregues), seguido por Rio de Janeiro e Minas Gerais.
- *[Insight sobre receita mensal]*
- *[Insight sobre entrega e satisfação]*
- *[Insight sobre recompra de clientes]*

## Decisões metodológicas

Registro aqui as escolhas feitas na análise, porque elas afetam os números:

- **Receita:** considera apenas pedidos com status `delivered` e o valor dos produtos (`price`), sem incluir o frete.
- **Clientes:** a contagem usa `customer_unique_id`, pois o `customer_id` muda a cada pedido e inflaria o total.
- **Unidade de análise:** receita é calculada por item de pedido; métricas por pedido (como ticket médio) agregam os itens antes da média.

## Ferramentas

| Ferramenta | Uso no projeto |
|---|---|
| **MySQL** (Workbench) | Modelagem, importação, limpeza e consultas analíticas |
| **Excel** | Validação dos resultados e tabelas dinâmicas |
| **Power BI** | Dashboard interativo com os principais indicadores |
| **GitHub** | Versionamento e documentação |

## Dados

- **Fonte:** [Brazilian E-Commerce Public Dataset by Olist](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce), disponível no Kaggle.
- **Conteúdo:** cerca de 100 mil pedidos realizados entre 2016 e 2018, distribuídos em várias tabelas relacionadas.

### Tabelas utilizadas

| Tabela | Descrição |
|---|---|
| `orders` | Pedidos, status e datas |
| `order_items` | Itens de cada pedido, preço e frete |
| `customers` | Clientes e localização |
| `products` | Produtos e categorias |
| `category_translation` | Tradução dos nomes de categoria para inglês |
| `sellers` | Vendedores e localização |
| `order_payments` | Pagamentos e parcelas |
| `order_reviews` | Avaliações dos clientes |

A tabela de geolocalização não foi utilizada.

### Relacionamentos

```
customers ──< orders ──< order_items >── products >── category_translation
                │              │
                │              └──────── sellers
                ├──< order_payments
                └──< order_reviews
```

## Estrutura do repositório

```
olist-analise-vendas/
├── sql/          # Consultas, uma por pergunta de negócio
├── excel/        # Planilhas de validação e tabelas dinâmicas
├── dashboard/    # Arquivo do Power BI e prints
└── README.md
```

## Como reproduzir

1. Baixe o dataset no Kaggle (link acima).
2. Crie um banco no MySQL e importe os arquivos CSV com o *Table Data Import Wizard* do MySQL Workbench.
3. Confira o número de linhas de cada tabela após a importação.
4. Execute os arquivos da pasta `sql/` na ordem numérica.

## Dashboard

*Em construção. Prints e link serão adicionados aqui.*

## Próximos passos

- [ ] Concluir as consultas SQL das 9 perguntas
- [ ] Validar resultados e criar tabelas dinâmicas no Excel
- [ ] Construir o dashboard no Power BI
- [ ] Escrever as conclusões e recomendações de negócio

## Autor

**[Seu nome]**
Aspirante a Analista de Dados

[LinkedIn](https://www.linkedin.com/in/seu-perfil) · [GitHub](https://github.com/seu-usuario)
