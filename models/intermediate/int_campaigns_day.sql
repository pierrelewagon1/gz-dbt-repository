SELECT date_date,
round(sum(ads_cost)) as ads_cost,
round(sum(impression)) as ads_impression,
round(sum(click)) as ads_clicks

FROM {{ref("int_campaigns")}}
GROUP BY date_date