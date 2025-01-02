with 
    source_sales_reason as (

    select *
    from {{ source('erp_adventure_works', 'salesreason') }}

)

, stg_sales_reason as (

    select
        -- primary key
        salesreasonid as pk_sales_reason

        -- properties
        , cast(name as varchar) as sales_reason

    from source_sales_reason
)

select *
from stg_sales_reason