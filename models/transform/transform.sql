SELECT
  order_id,
  DATE(CAST(concat("20",split(order_date,"/")[offset(2)]) AS INT64),CAST(split(order_date,"/")[offset(0)] AS INT64), CAST(split(order_date,"/")[offset(1)] AS INT64)) as order_date,
  DATE(CAST(concat("20",split(shipping_date,"/")[offset(2)]) AS INT64),CAST(split(shipping_date,"/")[offset(0)] AS INT64), CAST(split(shipping_date,"/")[offset(1)] AS INT64)) as shipping_date,
  shipping_mode,
  customer_id,
  customer_name,
  customer_type,
  city,
  prefectures,
  country,
  region,
  product_id,
  category,
  subcategory,
  product_name,
  sales,
  quantity,
  discount_rate,
  profit
FROM
    {{ source("lightdash_superstore","sample_superstore" )}}