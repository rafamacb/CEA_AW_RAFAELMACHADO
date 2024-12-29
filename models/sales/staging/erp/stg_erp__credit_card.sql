with
    source_credit_card as (
        select *
        from {{ source('erp_adventure_works', 'creditcard') }}
    )

    , credit_card as (
        select
            -- Primary Key
            cast (CREDITCARDID as int) as pk_credit_card

            -- Properties
            , cast (CARDTYPE as varchar) as card_type
        from source_credit_card
    )

select *
from credit_card