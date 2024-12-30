with
    dim_territory as (
        select *
        from {{ ref('int_territory') }}
    )

select *
from dim_territory