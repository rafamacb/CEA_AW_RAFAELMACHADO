WITH
    source_store AS (
        SELECT *
        FROM {{ source('erp_adventure_works', 'store') }}
    ),
    store AS (
        SELECT
            -- Primary Key
            CAST(BUSINESSENTITYID AS int) AS pk_store

            -- Properties
            ,CAST(NAME AS varchar) as name_store
        FROM source_store
    )
SELECT *
FROM store
