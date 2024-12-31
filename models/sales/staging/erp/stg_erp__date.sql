with
    stg_date as (
        {{ dbt_date.get_date_dimension("2011-01-01", "2014-12-31") }}
    )

select *
from stg_date

