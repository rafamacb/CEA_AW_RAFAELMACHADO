 with
    source_territory as (
        select *
        from {{ source('erp_adventure_works', 'salesterritory') }}
    )

    , stg_territory as (
        select
            -- Primary key
            cast(TERRITORYID as int) as pk_territory

            -- Foreign Key
            , cast(COUNTRYREGIONCODE as varchar) as fk_country_region

            -- Properties
            , cast(NAME as varchar) as territory_name
            , cast("group" as varchar) as continent_name

            /*Unused data
            --SALESYTD
            --SALESLASTYEAR
            --COSTYTD
            --COSTLASTYEAR
            --ROWGUID
            --MODIFIEDDATE*/
        from source_territory st
       
    )

select *
from stg_territory