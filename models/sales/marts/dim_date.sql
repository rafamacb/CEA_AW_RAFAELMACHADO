with 
    dim_date as (
        select *
        from {{ ref('int_dates') }}
    )

select *
from dim_date