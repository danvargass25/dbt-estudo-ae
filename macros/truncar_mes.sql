{% macro truncar_mes(coluna_data) %}
    DATE_TRUNC('month', {{ coluna_data }})
{% endmacro %}