with 
    fct_orders as (
        select *
        from {{ ref('int_sales_orders') }}

    )

select *
from fct_orders