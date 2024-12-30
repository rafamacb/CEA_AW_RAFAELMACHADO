with
    source_product as (
        select *
        from {{ source('erp_adventure_works', 'product') }}
    )

    , stg_product as (
        select
            -- Primary key
            cast(PRODUCTID as int) as pk_product

            -- Foreign Key
            , cast(PRODUCTSUBCATEGORYID as int) as fk_product_subcategory

            -- Properties
            , cast(NAME as varchar) as product_name
            , cast(PRODUCTLINE as varchar) as product_line
            , case 
                when trim(product_line) = 'R' then 'Road - Road Bikes and Accessories'
                when trim(product_line) = 'M' then 'Mountain - Mountain Bikes and Gear'
                when trim(product_line) = 'T' then 'Touring - Touring Bikes and Equipment'
                when trim(product_line) = 'S' then 'Standard - General Accessories and Components'
                when product_line is null then 'Not Categorized'
                else 'Other - Unclassified Product Line'
            end as productline_description
            , cast(STANDARDCOST as numeric(18,2)) as product_cost
            , cast(LISTPRICE as numeric(18,2)) as product_price

        from source_product
    )

select *
from stg_product
