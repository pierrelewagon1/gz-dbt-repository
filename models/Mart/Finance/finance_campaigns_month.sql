SELECT
    DATE_TRUNC(date_date, MONTH) AS date_month,
    ROUND(SUM(ads_margin), 2) AS ads_margin,
    ROUND(SUM(ads_cost), 2) AS ads_cost,
    ROUND(SUM(ads_impression), 2) AS ads_impression,
    ROUND(SUM(ads_clicks), 2) AS ads_clicks,
    ROUND(SUM(nb_transaction), 2) AS nb_transaction,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(average_basket), 2) AS average_basket,
    ROUND(SUM(margin), 2) AS margin,
    ROUND(SUM(operational_margin), 2) AS operational_margin
FROM
{{ref("finance_campaigns_day")}}
GROUP BY
    date_month
