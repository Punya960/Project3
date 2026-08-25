# Project3
SQL analysis
# Project 3: SQL Data Analysis

**DecodeLabs Data Analytics Internship — 2026**

## Overview
This project uses SQL to filter, group, and aggregate the e-commerce orders dataset (1,200 records) into actionable business intelligence — the same dataset used in Project 2, now queried directly with SQL instead of pandas.

## Goal
- Use `WHERE`, `ORDER BY`, `GROUP BY`
- Perform basic aggregations (`COUNT`, `SUM`, `AVG`)

## Files
- `queries.sql` — all queries with comments explaining what each demonstrates
- `Dataset_for_Data_Analytics.xlsx` — source dataset (loaded into a local `orders` table)

## Key Queries & Findings
1. **Revenue by product** — Chairs lead total revenue ($195,620), Laptops lead average order value ($1,110.56).
2. **High-value orders** — 34 orders exceed $3,000, spanning every product category and order status.
3. **Delivered orders by payment method** — Online payments generate the most delivered revenue ($67,119.65).
4. **Products averaging over $1,000/order** — Laptop, Chair, Printer, Monitor, Tablet all qualify; Desk and Phone fall below.
5. **Coupon usage by referral source** — Instagram-referred orders using a coupon generate the most revenue ($212,627.74).
6. **Monthly trend** — Revenue ranges from ~$27,700 to ~$68,100/month with no strong seasonal pattern; June 2024 is the peak month.

## Tools Used
SQLite (via Python) for query execution
