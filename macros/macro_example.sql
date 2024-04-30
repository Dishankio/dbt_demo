{% macro macro_example() %}

select * from  {{ ref("dishank_incremental_test")}} 

{% endmacro %}