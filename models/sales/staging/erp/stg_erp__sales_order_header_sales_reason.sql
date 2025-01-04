with source as (

    select *
    from {{ source('erp_adventure_works', 'salesorderheadersalesreason') }}

)

, sales_order_header_sales_reasons as (

    select

        -- primary key
        salesorderid as pk_sales_order

        -- foreign keys
        , salesreasonid as fk_sales_reason

    from source
    
)

select *
from sales_order_header_sales_reasons