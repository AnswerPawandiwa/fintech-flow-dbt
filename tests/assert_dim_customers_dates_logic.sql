select
    customer_id,
    effective_from,
    effective_to
from {{ ref('dim_customers') }}
where effective_to is not null
  and effective_from >= effective_to
