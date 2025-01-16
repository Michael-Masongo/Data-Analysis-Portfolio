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
	*
FROM
	hotel_data
LEFT JOIN
	dbo.market_segment
	ON hotel_data.market_segment = dbo.market_segment.market_segment
LEFT JOIN
	dbo.meal_cost
	ON hotel_data.meal = dbo.meal_cost.meal