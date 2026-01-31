select
    transfer_id
from {{ ref('fct_transfers') }}
where sender_account_id = receiver_account_id
