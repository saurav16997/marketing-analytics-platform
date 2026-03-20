SELECT
  user_pseudo_id AS user_id,

  event_name,

  TIMESTAMP_MICROS(event_timestamp) AS event_time,

  -- Extract purchase value (only exists for purchase events)
  (
    SELECT value.int_value
    FROM UNNEST(event_params)
    WHERE key = 'value'
  ) AS purchase_value,
  device.category AS device_type

FROM `bigquery-public-data.ga4_obfuscated_sample_ecommerce.events_*`