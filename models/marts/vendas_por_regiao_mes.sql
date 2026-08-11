{{ config(materialized='table') }}

SELECT
    regiao,
    DATE_TRUNC('month', data_venda) AS mes,
    COUNT(id_venda) AS quantidade_vendas,
    SUM(valor_venda) AS receita_total
FROM {{ ref('stg_vendas') }}
GROUP BY regiao, DATE_TRUNC('month', data_venda)
ORDER BY regiao, mes