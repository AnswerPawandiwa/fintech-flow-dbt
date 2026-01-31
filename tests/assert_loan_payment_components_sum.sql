select
    payment_id,
    total_payment_amount,
    (principal_paid + interest_paid + late_fee) as calculated_total
from {{ ref('fct_loan_payments') }}
where abs(total_payment_amount - (principal_paid + interest_paid + late_fee)) > 0.01
