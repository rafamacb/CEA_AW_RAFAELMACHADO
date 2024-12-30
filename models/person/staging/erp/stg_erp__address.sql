with 
    source_address as (
        select *
        from {{ source('erp_adventure_works', 'address') }}
    )  

    , stg_address as (
        select
            -- Primary Key
            cast(ADDRESSID as int) as pk_address

            -- Foreign key
            , cast(STATEPROVINCEID as int) as fk_state_province

            -- Properties
            , cast(ADDRESSLINE1 as varchar) as address
            , cast (CITY as varchar) as city_name

            /* Unused columns
            -- ADDRESSLINE2
            -- POSTALCODE
            -- SPATIALLOCATION
            -- ROWGUID
            -- MODIFIEDDATE*/
        
        from source_address
    ) 

select *
from stg_address
