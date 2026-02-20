

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

---

## Key Measures (DAX)

Total Revenue (Won Deals):

CALCULATE(
    SUM(sales_pipeline_clean[close_value]),
    sales_pipeline_clean[deal_stage] = "Won"
)

Win Rate:

DIVIDE(
    CALCULATE(COUNT(sales_pipeline_clean[opportunity_id]),
              sales_pipeline_clean[deal_stage] = "Won"),
    CALCULATE(COUNT(sales_pipeline_clean[opportunity_id]),
              sales_pipeline_clean[deal_stage] IN {"Won","Lost"})
)

Average Deal Size:

CALCULATE(
    AVERAGE(sales_pipeline_clean[close_value]),
    sales_pipeline_clean[deal_stage] = "Won"
)

Average Sales Cycle (Days):

AVERAGE(sales_pipeline_clean[sales_cycle_days])

---

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

