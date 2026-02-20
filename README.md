# CRM_Sales_Insights

=Project Overview
This project is an end-to-end CRM Sales Performance Analysis built using Python (Pandas), PostgreSQL, and Power BI.
The objective was to clean raw sales pipeline data, validate data integrity, perform SQL-based analysis, design a proper star schema model, and develop an interactive executive dashboard in Power BI.

=The dashboard provides insights into:

Revenue trends
Win rate performance
Deal size analysis
Sector performance
Sales agent performance
Product contribution to revenue

=Tools & Technologies

Python (Pandas) – Data cleaning & preprocessing
PostgreSQL – Data storage & SQL analysis
Power BI – Data modeling & dashboard creation
Excel – Source dataset

 
=Data Cleaning (Python – Pandas)

Loaded and explored CRM sales pipeline dataset
Standardized deal_stage values
Created deal_status indicator:
Handled missing values
Validated date fields
Checked for duplicate records
Exported cleaned dataset to PostgreSQL

=Database Validation & Modeling (PostgreSQL)
Loaded cleaned data into PostgreSQL

=Verified primary key uniqueness:
opportunity_id
account
product
sales_agent

=SQL Exploratory Analysis

Performed analytical queries to understand business performance:
Monthly revenue analysis
Monthly deal volume
Average deal size per month
Revenue by sector
Revenue by product
Sales agent performance
Win rate calculation
Volume vs deal-size impact on revenue

Key analytical finding:
Revenue growth was driven more by deal volume than deal size.

=Power BI Data Modeling

Connected Power BI directly to PostgreSQL.

-Created DAX Measures:
Total Revenue (Won Only)
Total Won Deals
Win Rate
Average Deal Size
Total Closed Deals

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
