SELECT
date_date,
count (orders_id) AS nb_transaction,
round (sum (revenue),2) AS revenue,
round (SAFE_divide (sum(revenue),count (orders_id)),2) AS average_basket,
round (sum(margin),2) as margin,
round (sum (operational_margin),2) as operational_margin
FROM {{ ref("int_orders_operational") }}
GROUP BY date_date
ORDER BY date_date desc