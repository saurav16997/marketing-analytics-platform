SELECT
  user_id, device_type,

  MAX(CASE WHEN event_name = 'page_view' THEN 1 ELSE 0 END) AS viewed_page,

  MAX(CASE WHEN event_name = 'view_item' THEN 1 ELSE 0 END) AS viewed_item,

  MAX(CASE WHEN event_name = 'add_to_cart' THEN 1 ELSE 0 END) AS added_to_cart,

  MAX(CASE WHEN event_name = 'begin_checkout' THEN 1 ELSE 0 END) AS began_checkout,

  MAX(CASE WHEN event_name = 'purchase' THEN 1 ELSE 0 END) AS purchased

FROM {{ ref('int_events') }}

GROUP BY user_id, device_type