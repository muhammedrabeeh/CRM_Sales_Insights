-- 1. KPI Summary

SELECT
    SUM(CASE WHEN deal_stage = 'Won' THEN close_value ELSE 0 END) AS total_revenue,
    AVG(deal_status) AS win_rate,
    AVG(CASE WHEN deal_stage = 'Won' THEN close_value END) AS avg_deal_size
FROM sales_pipeline_clean;


-- 2. Monthly Revenue Trend

SELECT
    DATE_TRUNC('month', close_date) AS month,
    SUM(close_value) AS monthly_revenue
FROM sales_pipeline_clean
WHERE deal_stage = 'Won'
GROUP BY month
ORDER BY month;


-- 3. Revenue by Sector

SELECT
    a.sector,
    SUM(s.close_value) AS revenue
FROM sales_pipeline_clean s
JOIN accounts a
    ON s.account = a.account
WHERE s.deal_stage = 'Won'
GROUP BY a.sector
ORDER BY revenue DESC;


-- 4. Sales Agent Performance

SELECT
    sales_agent,
    COUNT(opportunity_id) AS total_deals,
    SUM(CASE WHEN deal_stage = 'Won' THEN 1 ELSE 0 END) AS won_deals,
    AVG(deal_status) AS win_rate,
    SUM(CASE WHEN deal_stage = 'Won' THEN close_value ELSE 0 END) AS revenue
FROM sales_pipeline_clean
GROUP BY sales_agent
ORDER BY revenue DESC;


-- 5. Top 5 Products by Revenue

SELECT *
FROM (
    SELECT
        product,
        SUM(close_value) AS revenue,
        RANK() OVER (ORDER BY SUM(close_value) DESC) AS revenue_rank
    FROM sales_pipeline_clean
    WHERE deal_stage = 'Won'
    GROUP BY product
) ranked_products
WHERE revenue_rank <= 5;

