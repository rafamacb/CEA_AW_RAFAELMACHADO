with 
    source_country as (
        select *
        from {{ source('erp_adventure_works', 'countryregion') }}
    )  

    , stg_country as (
        select

            -- Primary Key
            cast(COUNTRYREGIONCODE as varchar) as pk_country_region

            -- Properties
            ,cast(NAME as varchar) as country_region_name

            /*Unused columns
            --MODIFIEDDATE*/
        
        from source_country
    ) 

select *
from stg_country
