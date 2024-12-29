with
    source_costumer as (
        select *
        from {{ source('erp_adventure_works', 'customer') }}
    )

    , customer as (
        select 
            -- Primary keys
            cast (CUSTOMERID as int) as pk_customer

            -- Foreign Keys
            , cast (PERSONID as int) as fk_person
            , cast (STOREID AS int) as fk_store
            , cast (TERRITORYID as int) as fk_territory

        
            /* Unused columns
            STOREID 
            ROWGUID 
            MODIFIEDDATE*/
            
        from source_costumer

    )

    select *
    from customer