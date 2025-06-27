select orderid, sum(ordersellingprice)
from {{ ref('raw_orders') }}
group by orderid
having sum(ordersellingprice) < 0