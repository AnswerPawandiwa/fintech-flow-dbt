select *
from {{ ref('int_customers_investments_enriched') }}
where total_invested_amount < 0
