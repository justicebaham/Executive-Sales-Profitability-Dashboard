-- PURPOSE: Data engineering and transformation for an executive-level BI dashboard.
-- BUSINESS LOGIC: Engineering KPIs like Profit Margin using SAFE_DIVIDE and ROUND for reporting accuracy.
-- STRATEGY: Creating a logical view to establish an end-to-end data pipeline from BigQuery to Looker Studio.

SELECT
Category,
`Sub-Category` AS sub_category,
Segment,
Region,
State,
City,
Sales,
Profit,
Quantity,
ROUND(SAFE_DIVIDE(Profit, Sales), 4) AS profit_margin
FROM 
`bionic-path-489705-d6.sample_superstore.sample_superstore`
WHERE 
Sales > 0;
