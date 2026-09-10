SELECT
    id_cliente,
    nome AS nome_cliente,
    cidade,
    data_cadastro
FROM {{ source('sistema_clientes', 'clientes_raw') }}