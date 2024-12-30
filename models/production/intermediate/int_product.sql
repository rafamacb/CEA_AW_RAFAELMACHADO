with 
    product as (
    select *
    from {{ ref('stg_erp__products') }}
)

, subcategory as (
    select *
    from {{ ref('stg_erp__product_subcategory') }}
)

, category as (
    select *
    from {{ ref('stg_erp__product_category') }}
)

, dim_product as (
    select
    
    --Primary key
    product.pk_product
    
    -- Foreign keys
    , product.fk_product_subcategory
    , subcategory.fk_product_category

    -- Properties
    , product.product_name
    , category.category_name
    , subcategory.subcategory_name
    , product.product_line
    , product.productline_description
     
    
    -- Metrics
    , product.product_cost
    , product.product_price

    from product
    inner join subcategory
        on subcategory.pk_product_subcategory = product.fk_product_subcategory
    inner join category
        on category.pk_product_category = subcategory.fk_product_category
)

select *
from dim_product