with
    stg_credit_card as (
        select *
        from {{ ref('stg_erp__credit_card') }}
    )

select *
from stg_credit_card