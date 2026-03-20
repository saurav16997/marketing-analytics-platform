
select user_id, event_name, event_time, device_type,
row_number() over (partition by user_id order by event_time) as event_order 
-- Without ordering: You can’t build funnels
from {{ref('stg_events')}}

