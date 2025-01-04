/*  
    Este teste garante que as vendas de 2011 estão
    corretas com o valor auditado da contabilidade:
    R$ 12.646.112,16
*/

with
    sales_in_2011 as (
        select sum(net_value) as net_value
        from {{ ref('int_sales_orders') }}
        where order_date between '2011-01-01' and '2011-12-31'
    ) 

select net_value
from sales_in_2011
where net_value not between 12646112.15 and 12646112.17