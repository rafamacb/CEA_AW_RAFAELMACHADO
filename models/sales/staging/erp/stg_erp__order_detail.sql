with 
    source_order_detail as (

    select *
    from {{ source('erp_adventure_works', 'salesorderdetail') }}

)

, sales_order_details as (

    select
        -- primary key
        cast(salesorderdetailid as int) as pk_sales_order_detail

        -- foreign keys
        , cast( salesorderid as int) fk_sales_order
        , cast( productid as int) fk_product

        -- costs and quantities
        , cast( orderqty as int) as order_quantity
        , cast( unitprice as numeric(18,4)) as unit_price
        , cast( unitpricediscount as numeric) as unit_price_discount

    from source_order_detail

)

select *
from sales_order_details