with hotels AS (
select * from dbo.['2018$']
union
select * from dbo.['2019$']
union
select * from dbo.['2020$'])


select * from hotels h
LEFT JOIN dbo.market_segment$ m
ON h.market_segment=m.market_segment
LEFT JOIN dbo.meal_cost$ mc
ON h.meal = mc.meal


select hotel, arrival_date_year, round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr), 2) AS revenue 
from hotels 
group by arrival_date_year, hotel



