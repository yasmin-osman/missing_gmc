-- status = 'Final' should always have a reported_instant
select
    order_id,
    reported_instant,
    status
from {{ ref('stg_epic_data__imaging_fact') }}
where 1=1
  and status = 'Final'
  and reported_instant is null
