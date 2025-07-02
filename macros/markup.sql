{% macro markup(costprice, sellingprice) %}
   ({{sellingprice}} - {{costprice}}) /{{costprice}}
{% endmacro %}
