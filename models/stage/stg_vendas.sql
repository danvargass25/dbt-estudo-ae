SELECT
    id_venda,
    vendedor AS nome_vendedor,
    regiao,
    data_venda,
    valor AS valor_venda
FROM {{ ref('vendas') }}