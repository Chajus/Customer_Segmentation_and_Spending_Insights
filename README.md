# Customer Segmentation & Spending Analysis

**Project Type:** SQL Data Cleaning & Analysis
**Dataset:** Online Retail Dataset

---

## Overview
This project analyzes customer purchasing behavior using the Online Retail dataset. The goal was to identify customer segments, understand spending patterns, and uncover insights to improve customer retention and revenue.
The dataset was cleaned and transformed using SQL, then visualized through an interactive Tableau dashboard to highlight key metrics and trends.

## Steps Performed

1. **Initial Data Checks**
- Reviewed dataset structure and columns
- Checked for missing values (e.g., CustomerID)
- Identified invalid transactions (negative quantities)
- Verified data consistency across records
- 
2. **Data Cleaning & Transformation**
- Removed invalid transactions (negative quantities)
- Handled NULL values in key fields
- Created calculated field Revenue (Quantity * UnitPrice)
- Aggregated data to customer-level for analysis

3. **Customer Segmentation**
- Grouped customers based on purchase frequency:
- One-Time (1 order)
- Occasional (2–5 orders)
- Frequent (6+ orders)

---

## How to Use
1. Open the SQL script in this repository: [`Online Retail Customer Segmentation.sql`](SQL)
2. Run the queries in your preferred SQL environment (MySQL recommended)
3. Use the generated CSV for visualization or further analysis

---

## Tableau Dashboard

Interactive visualization created using the cleaned Online Retail dataset.

🔗 **View Interactive Dashboard:** 
[https://public.tableau.com/app/profile/justincha/viz/CustomerSegmentationSpendingInsightsforOnlineRetail/Dashboard1]

Key Metrics (KPIs)
Total Revenue
Total Customers
Average Order Value
Dashboard Features
Customer Segmentation: Categorizes users by purchase frequency
Order Frequency Distribution: Visualizes how often customers make purchases
Top Customers by Spending: Highlights highest-value customers
Key Insights
The majority of customers are one-time buyers, indicating low retention
A small group of frequent customers contributes a large portion of revenue
Significant opportunity exists to increase revenue through retention strategies
