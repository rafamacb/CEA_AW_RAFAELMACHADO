with 
    customer as ( 
        select *
        from {{ ref('stg_erp__customer') }}
    )

    , person as (
        select *
        from {{ ref('stg_erp__person') }}
    )

    , store as (
        select *
        from {{ ref('stg_erp__store') }}
    )

    , dim_customer as (
        select
            customer.pk_customer
            , customer.fk_person
            , customer.fk_store
            , customer.fk_territory
            , person.person_type     
            , person.formatted_name
            , store.name_store
        from customer
            left join person 
                on customer.fk_person = person.pk_person
            left join store 
                on customer.fk_store = store.pk_store
       
    )

select *
from dim_customer