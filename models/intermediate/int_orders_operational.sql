
SELECT 
    orders_id,
    date_date,
    revenue,
    quantity,
    purchase_cost,
    margin,
    sh.shipping_fee as shipping_fee, 
    sh.logcost as logcost,
    cast(sh.ship_cost AS FLOAT64) as ship_cost,
    round ((margin + shipping_fee - logcost - cast(sh.ship_cost AS FLOAT64)),2) AS operational_margin
FROM {{ ref("int_orders_margin") }}m
JOIN {{ ref("stg_raw__ship")}}sh
USING (orders_id)