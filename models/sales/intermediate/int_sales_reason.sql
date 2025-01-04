with stg_header_sales_reasons as (
    select *
    from {{ ref('stg_erp__sales_order_header_sales_reason') }}
)
, stg_sales_reasons as (
    select *
    from {{ ref('stg_erp__sales_reason') }}
)
, int_sales_reason as (
    select
        header_sales_reasons.pk_sales_order,
        LISTAGG(coalesce(sales_reasons.sales_reason, 'Unknown reason'), ', ') as sales_reason
    from stg_header_sales_reasons header_sales_reasons
    inner join stg_sales_reasons sales_reasons
        on header_sales_reasons.fk_sales_reason = sales_reasons.pk_sales_reason
    group by header_sales_reasons.pk_sales_order
)
select *
from int_sales_reason

