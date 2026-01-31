select
    investment_id,
    unrealized_pnl,
    current_market_value,
    total_cost
from {{ ref('fct_investments') }}
where abs(unrealized_pnl - (current_market_value - total_cost)) > 0.01
