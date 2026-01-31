select
    transfer_id
from {{ ref('int_transfers_enriched') }}
where sender = receiver
