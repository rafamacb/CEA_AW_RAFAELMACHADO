with
    source_category as (
        select *
        from {{ source('erp_adventure_works', 'productcategory') }}
    )

    , stg_category as (
        select
            -- Primary key
            cast(PRODUCTCATEGORYID as int) as pk_product_category

            --Properties
            , cast(NAME as varchar) as category_name

            
        from source_category
    )

select *
from stg_category