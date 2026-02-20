# Data Model#
A star schema was implemented:

Fact Table:
- sales_pipeline_clean

Dimension Tables:
- accounts
- products
- sales_team

Relationships:
- One-to-Many (1:*)
- Single-direction filtering

-- 1. TOTAL REVENUE (Won Deals Only)

Total Revenue = 
CALCULATE(
    SUM(sales_pipeline_clean[close_value]),
    sales_pipeline_clean[deal_stage] = "Won"
)


--## 2. TOTAL WON DEALS

Total Won Deals =
CALCULATE(
    COUNT(sales_pipeline_clean[opportunity_id]),
    sales_pipeline_clean[deal_stage] = "Won"
)


-- 3. TOTAL CLOSED DEALS (Won + Lost)

Total Closed Deals =
CALCULATE(
    COUNT(sales_pipeline_clean[opportunity_id]),
    sales_pipeline_clean[deal_stage] IN { "Won", "Lost" }
)


-- 4. WIN RATE

Win Rate =
DIVIDE(
    CALCULATE(
        COUNT(sales_pipeline_clean[opportunity_id]),
        sales_pipeline_clean[deal_stage] = "Won"
    ),
    CALCULATE(
        COUNT(sales_pipeline_clean[opportunity_id]),
        sales_pipeline_clean[deal_stage] IN { "Won", "Lost" }
    )
)


-- 5. AVERAGE DEAL SIZE (Won Deals)

Avg Deal Size =
CALCULATE(
    AVERAGE(sales_pipeline_clean[close_value]),
    sales_pipeline_clean[deal_stage] = "Won"
)


## Dashboard Sections

1. Executive Overview
   - Total Revenue
   - Win Rate
   - Average Deal Size
   - Revenue Trend

2. Sector Performance
   - Revenue by Sector
   - Win Rate by Sector

3. Sales Agent Performance
   - Revenue by Agent
   - Deal Volume
   - Win Rate

