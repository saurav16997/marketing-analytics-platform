SELECT
  user_id,
  device_type,

  -- Assign pseudo experiment groups
  CASE 
    WHEN MOD(ABS(FARM_FINGERPRINT(user_id)), 2) = 0 THEN 'control'
    ELSE 'treatment'
  END AS experiment_group,

  viewed_item,
  added_to_cart

FROM {{ ref('fct_funnel') }}