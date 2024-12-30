with 
    stg_address as ( 
        select *
        from {{ ref('stg_erp__address') }}
    ),

    stg_province as (
        select *
        from {{ ref('stg_erp__state_province') }}
    ),

    stg_country as (
        select *
        from {{ ref('stg_erp__country_region') }}
    ),

    stg_territory as (
        select *
        from {{ ref('stg_erp__sales_territory') }}
    ),

    dim_territory as (
        select
           -- Primary Keys
           address.pk_address
           , address.fk_state_province
           , province.fk_country_region
           , province.fk_territory

            -- Properties
           , address.address
           , address.city_name
           , province.province_name
           , country.country_region_name
           , territory.territory_name
           , territory.continent_name

        from stg_address address
        left join stg_province province
            on address.fk_state_province = province.pk_province
        left join stg_country country
            on province.fk_country_region = country.pk_country_region
        left join stg_territory territory
            on province.fk_territory = territory.pk_territory
        order by address asc
    )

select *
from dim_territory
