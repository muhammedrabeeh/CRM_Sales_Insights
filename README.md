#Project Overview#

End-to-end CRM sales analysis project using Python (Pandas), PostgreSQL, and Power BI.
The goal was to clean raw sales data, validate data integrity, perform SQL analysis, and build an interactive executive dashboard.

=Tools Used
Python (Pandas) – Data cleaning
PostgreSQL – Data storage & SQL analysis
Power BI – Data modeling & dashboard
Excel – Source data

 Project Workflow
 
=Data Cleaning (Python)
Standardized deal_stage
Created deal_status (Won = 1, Lost = 0)
Handled null values
Removed duplicates
Exported clean dataset to PostgreSQL

=Data Modeling (PostgreSQL)

Verified primary key uniqueness
Validated foreign key consistency
Built a Star Schema
Fact: sales_pipeline_clean
Dimensions: accounts, product, sales_team

=SQL Analysis

Monthly revenue trend
Win rate calculation
Revenue by sector
Product performance
Sales agent performance

=Power BI Dashboard

Connected directly to PostgreSQL
Created 1:* relationships
Built DAX measures:
Total Revenue (Won)
Win Rate
Total Won Deals
Avg Deal Size
Designed interactive dashboard with slicers

=Dashboard Overview

Executive Summary Page
Total Revenue: 10.01M
Win Rate: 0.63
Total Won Deals: 4238
Average Deal Size: 2.36K

=Skills Demonstrated

Data cleaning & transformation using Pandas
SQL data validation & analysis
Star schema data modeling
DAX measure creation
KPI development
Business performance interpretation
Interactive dashboard design

=Key Business Insights=

June was the highest revenue month.
Finance sector contributed the highest revenue.
High revenue months were driven primarily by deal volume.
Top revenue-generating agent differed from highest win-rate agent.
Revenue distribution varied significantly across product categories.
