with 
    source_province as (
        select *
        from {{ source('erp_adventure_works', 'stateprovince') }}
    )  

    , stg_province as (
        select
            -- Primary Key
            cast(STATEPROVINCEID as int) as pk_province

            -- Foreign Key
            , cast(COUNTRYREGIONCODE as varchar) as fk_country_region
            , cast(TERRITORYID as int) as fk_territory

            -- Properties
            , cast(NAME as varchar) as province_name

            /*Unused properties
            --STATEPROVINCECODE
            --ISONLYSTATEPROVINCEFLAG            
            --TERRITORYID
            --ROWGUID
            --MODIFIEDDATE */          
        from source_province
    ) 

select *
from stg_province
