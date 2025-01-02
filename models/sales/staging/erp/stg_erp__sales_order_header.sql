with 
    source_sales_header as (

    select *
    from {{ source('erp_adventure_works', 'salesorderheader') }}

)

, stg_sales_order_headers as (

    select
        -- primary key
        cast(salesorderid as int) as pk_sales_order

        -- foreign keys
        , cast(customerid as int) as fk_customer
        , cast(creditcardid as int) as  fk_credit_card
        , cast(salesorderid as int) as fk_order_detail
        , cast(shiptoaddressid as int) fk_ship_to_address
        , cast(status as int) as fk_status
        
        --timestamps
        , cast(orderdate as date) as order_date 

        -- properties
        , cast(status as int) as order_status,
        case
            when order_status = 1 then 'in_process'
            when order_status = 2 then 'approved'
            when order_status = 3 then 'backordered'
            when order_status = 4 then 'rejected'
            when order_status = 5 then 'shipped'
            when order_status = 6 then 'cancelled'
            else 'Undefined status'
        end as order_status_description
        , onlineorderflag as is_online_order
        , case
                when onlineorderflag = true then 'Online'
                when onlineorderflag = false then 'Physical'
        end as sales_type
        -- metrics
        , cast(freight as numeric) as freight
        , cast(taxamt as numeric) as tax
        , cast(subtotal as numeric(18,4)) as order_subtotal
        , cast(totaldue as numeric) as order_total_due
        

    from source_sales_header

)

select *
from stg_sales_order_headers