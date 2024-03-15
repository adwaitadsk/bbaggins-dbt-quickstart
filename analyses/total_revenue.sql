select 
    sum(amount) as total_amount

from {{ ref('stg_payments') }}
where
    status = 'success'