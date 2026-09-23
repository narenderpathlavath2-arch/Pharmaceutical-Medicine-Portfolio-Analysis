# Pharmaceutical Medicine Portfolio & Review Analysis

## Project Overview

This project analyzes a pharmaceutical medicine dataset using MySQL, SQL, Power BI, DAX, and Power Query.

The analysis focuses on medicine portfolio structure, manufacturers, medicine reviews, compositions, uses, and side-effect information.

## Dataset

- Total records: 11,825
- Unique complete records after duplicate removal: 11,741
- Main dataset: Medicine_Details.csv

## Tools Used

- MySQL
- SQL
- Power BI
- DAX
- Power Query

## SQL Analysis

The project includes:

- Data quality checks
- Duplicate detection
- Missing-value checks
- Review percentage validation
- Manufacturer analysis
- Medicine portfolio analysis
- Review performance analysis
- Composition analysis
- Uses analysis
- Reusable SQL Views

## Power BI Dashboard

The Power BI dashboard provides:

- Total Medicines
- Total Manufacturers
- Average Excellent Review %
- Average Poor Review %
- Top 10 Manufacturers by Medicine Count
- Overall Review Distribution
- Manufacturer Review Performance
- Medicine Portfolio by Manufacturer
- Review Quality Levels
- Manufacturer Performance Table

## Project Structure

```text
Pharmaceutical-Medicine-Portfolio-Analysis
│
├── README.md
│
├── SQL
│   ├── 01_database_and_table.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_business_analysis.sql
│   └── 04_analysis_views.sql
│
├── PowerBI
│   └── Pharmaceutical_Medicine_Analysis.pbix
│
└── Dashboard
    └── dashboard_screenshot.png