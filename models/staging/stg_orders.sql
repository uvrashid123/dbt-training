

select
--from raw_orders
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.customerid,
o.productid,
o.ordersellingprice,
o.ordercostprice,
--from raw_customer
c.CSTOMERNAME,
c.segment,
c.country,
--from raw_product
p.category,
p.productname,
p.subcategory,
o.ordersellingprice - o.ordercostprice as orderprofit
from {{ ref('raw_orders') }} o
        left join 
    {{ ref('raw_customer') }} c
        on o.customerid = c.customerid
        left join
    {{ ref('raw_product') }} p
        on o.productid = p.productid