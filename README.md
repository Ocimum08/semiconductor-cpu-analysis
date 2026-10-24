# Semiconductor CPU Product Analysis

## Project Overview
An exploratory data analysis project comparing AMD and Intel CPU technical specifications using Python, PostgreSQL, Excel, and Power BI.

## Objectives
- Analyze CPU specifications across manufacturers.
- Clean and standardize technical data.
- Compare CPU cores, boost clocks, and TDP.
- Identify missing values and data quality issues.
- Visualize findings in a Power BI dashboard.

## Tools & Technologies
- **Python:** Pandas, NumPy, Jupyter Notebook
- **Database:** PostgreSQL, SQL
- **Visualization:** Power BI
- **Spreadsheet:** Microsoft Excel

## Dataset
The source dataset contains 281,415 records and 26 columns. After filtering, the analysis covers 1,621 CPU products:
- AMD: 383 products
- Intel: 1,238 products

## Methodology
1. Explored and filtered the source data.
2. Cleaned specification values and standardized clock speeds to GHz.
3. Identified implausible values and handled them without guessing replacements.
4. Loaded the cleaned product data into PostgreSQL.
5. Used SQL to calculate summary statistics and assess data quality.
6. Built a Power BI dashboard to present the results.

## Key Findings
- AMD products in the dataset have an average recorded CPU core count of 12.50, compared with 7.39 for Intel.
- Average recorded boost clock is 4.15 GHz for AMD and 3.72 GHz for Intel.
- Maximum recorded boost clock is 5.7 GHz for AMD and 6.0 GHz for Intel.

These are descriptive statistics for the products represented in the dataset, not measures of sales, market share, or overall processor performance.

## Project Files
- `notebooks/` — Python exploration and data cleaning
- `sql/` — SQL analysis queries
- `data/processed/` — Processed CPU dataset
- `reports/` — Summary CSVs and project report
- `excel/` — Excel analysis workbook
- `powerbi/` — Power BI dashboard

## Limitations
- Some specifications are missing or incomplete.
- Source values may contain inconsistencies.
- CPU products differ in generation and intended use, so averages alone cannot establish which manufacturer has better performance.
- Results depend on the coverage and quality of the source dataset.
  
## Dashboard Preview

![Semiconductor CPU Analysis Dashboard](Dashboard%20Screenshot.png)

## Author
Created as a data analytics portfolio project to demonstrate practical skills in Python, SQL, data cleaning, and Power BI.
