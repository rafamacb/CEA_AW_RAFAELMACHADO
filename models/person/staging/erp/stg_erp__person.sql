with 
    source_person as (
        select *
        from {{ source('erp_adventure_works', 'person') }}
    )  

    , person as (
        select
        -- Primary Key
        cast (BUSINESSENTITYID as int) as pk_person
        
        -- Categorical data
        , cast (PERSONTYPE as varchar) as person_type
        , cast (NAMESTYLE as int) as name_style
        , case
            when name_style = 1
                then COALESCE(LASTNAME, '') || ' ' || COALESCE(FIRSTNAME, '') || ' ' || COALESCE(MIDDLENAME, '')
            else COALESCE(FIRSTNAME, '') || ' ' || COALESCE(MIDDLENAME, '') || ' ' || COALESCE(LASTNAME, '')
        end as formatted_name
        
        from source_person
    ) 

select *
from person
