with
    source_store as (
        select *
        from {{ source('erp_adventure_works', 'store') }}
    )

    , store as (
        select
            -- Primary Key
            cast (BUSINESSENTITYID as int) as pk_store

            -- Properties
            , cast (NAME as varchar) as name_store
        from source_store
    )

select *
from store