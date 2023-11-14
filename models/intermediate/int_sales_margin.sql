
SELECT
    orders_id,
    date_date,
    revenue,quantity,
    round((p.purchase_price*s.quantity),2) as purchase_cost,
    round (s.revenue - (p.purchase_price*s.quantity),2) as margin
FROM {{ ref("stg_raw__sales") }} s
JOIN {{ ref("stg_raw__product") }} p
on s.pdt_id = p.products_id
ORDER BY date_date
