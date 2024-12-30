with
    source_subcategory as (
        select *
        from {{ source('erp_adventure_works', 'productsubcategory') }}
    )

    , stg_subcategory as (
        select
            -- Primary key
            cast(PRODUCTSUBCATEGORYID as int) as pk_product_subcategory

            -- Foreign key
            , cast(PRODUCTCATEGORYID as int) as fk_product_category

            --Properties
            , cast(NAME as varchar) as subcategory_name

            /*Unused data
            ROWGUID
            MODIFIEDDATE*/
        from source_subcategory
    )

select *
from stg_subcategory