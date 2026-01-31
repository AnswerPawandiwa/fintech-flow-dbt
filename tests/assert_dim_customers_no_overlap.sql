select
    customer_id,
    count(*)
from {{ ref('dim_customers') }}
group by customer_id, effective_from
having count(*) > 1
