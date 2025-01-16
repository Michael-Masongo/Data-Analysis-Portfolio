WITH hotel_data AS (
		SELECT
			*
		FROM
			dbo.[2018_data]

		UNION

		SELECT
			*
		FROM
			dbo.[2019_data]

		UNION

		SELECT
			*
		FROM
			dbo.[2020_data]
		)

SELECT
	hotel,
	arrival_date_year,
	ROUND(SUM((stays_in_week_nights + stays_in_weekend_nights) * adr), 2) AS revenue
FROM
	hotel_data
GROUP BY arrival_date_year, hotel


SELECT
	*
FROM
	dbo.[market_segment]


SELECT
	*
FROM
	dbo.[meal_cost]