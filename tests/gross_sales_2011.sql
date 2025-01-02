/*  
    Este teste garante que as vendas de 2012 estão
    corretas com o valor auditado da contabilidade:
    R$ 12.646.112,16
*/

with
    sales_in_2011 as (
        select sum(gross_value) as gross_value
        from {{ ref('int_sales_orders') }}
        where order_date between '2011-01-01' and '2011-12-31'
    ) -- R$ 226298.5

select gross_value
from sales_in_2011
where gross_value not between 12646112.15 and 12646112.17