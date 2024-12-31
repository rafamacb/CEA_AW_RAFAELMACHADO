with
    stg_date as (
        select *
        from {{ ref('stg_erp__date') }}
    )

    , dim_date as (
        select 
            
            {{ dbt_utils.generate_surrogate_key(['DATE_DAY', 'DAY_OF_WEEK_NAME']) }} as sk_date

            , *
        from stg_date

    )

select *
from dim_date