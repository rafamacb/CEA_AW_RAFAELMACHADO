WITH 
    customer AS ( 
        SELECT *
        FROM {{ ref('stg_erp__customer') }}
    ),

    person AS (
        SELECT *
        FROM {{ ref('stg_erp__person') }}
    ),

    store AS (
        SELECT *
        FROM {{ ref('stg_erp__store') }}
    ),

    dim_customer AS (
        SELECT
            customer.pk_customer
            , customer.fk_person
            , customer.fk_store
            , customer.fk_territory
            , person.person_type
            , person.formatted_name
            , COALESCE(store.name_store, 'Unknown Store') AS name_store
        FROM customer
            LEFT JOIN person 
                ON customer.fk_person = person.pk_person
            LEFT JOIN store 
                ON customer.fk_store = store.pk_store
    )

SELECT *
FROM dim_customer

