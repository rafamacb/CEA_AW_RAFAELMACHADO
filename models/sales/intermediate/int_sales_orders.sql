with 
    stg_sales_order_headers as (

    select *
    from {{ ref('stg_erp__sales_order_header') }}

)

, stg_sales_order_details as (

    select *
    from {{ ref('stg_erp__order_detail') }}

)

, dim_date as (
    select *
    from {{ ref('dim_date') }}
)

, int_sales_orders as (

    select
        -- primary key
        order_header.pk_sales_order

        -- foreign keys
        , order_header.fk_order_detail
        , order_detail.fk_product
        , order_header.fk_customer
        , order_header.fk_credit_card
        , order_header.fk_ship_to_address
        , order_header.fk_status
        , dim_date.sk_date as fk_date
        

        -- timestamps
        , order_header.order_date

        -- Properties
        , order_header.sales_type
        , order_header.order_status_description

        -- costs and quantities
        , order_detail.order_quantity 
        , order_detail.unit_price       
        , order_detail.unit_price_discount
        , order_header.freight
        , order_header.tax
        , order_header.order_subtotal

         -- metrics
        , order_detail.unit_price * order_detail.order_quantity as gross_value
        , order_detail.unit_price * order_detail.order_quantity - (1 - order_detail.unit_price_discount) as net_value
        , case
            when order_detail.unit_price_discount > 0 then true
            else false
        end as teve_desconto

    from stg_sales_order_headers order_header
    inner join stg_sales_order_details order_detail
        on order_header.pk_sales_order = order_detail.fk_sales_order
    left join dim_date
        on order_header.order_date = dim_date.date_day


)

, final_select as (
    select 
         pk_sales_order
        , fk_order_detail
        , fk_product
        , fk_customer
        , fk_credit_card
        , fk_ship_to_address
        , fk_status
        , fk_date
        , order_date
        , sales_type
        , order_status_description
        , order_quantity
        , unit_price       
        , unit_price_discount
        , gross_value
        , net_value
        , tax
        , freight
        , order_subtotal 
        , teve_desconto

    from int_sales_orders

)

select *
from final_select