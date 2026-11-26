# Hotel Revenue Management – Data Analytics Project

## 1. Project Overview

This project analyses hotel booking data using Python, SQL, Statistics and Multiple Linear Regression.

The objective is to understand the factors associated with hotel room prices and provide useful insights for hotel revenue management.

**Industry:** Hospitality  
**Business Case:** Hotel Revenue Management  
**Course:** Data Analytics for Managers Using Python  
**Student:** Ritesh Ranjan  
**Roll Number:** [26PGDM148]

## 2. Business Problem

Hotels need to understand how booking characteristics, customer composition, hotel types and seasonal factors are associated with room prices. This project analyses these factors to support better hotel pricing and revenue-management decisions.

## 3. Key Business Question

How do hotel type, booking characteristics, customer composition and seasonal factors influence the Average Daily Rate (ADR) of hotel rooms?

## 4. Dataset Information

- **Dataset:** Hotel Booking Demand Dataset
- **Source:** Kaggle
- **Dataset Author:** Jesse Mostipak
- **Original Records:** 119,390
- **Original Columns:** 32
- **Hotels Covered:** City Hotel and Resort Hotel
- **Country:** Portugal

**Dataset Link:** https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand

## 5. Dependent Variable

ADR (Average Daily Rate) is the numerical dependent variable used in this project to analyse hotel room pricing.

## 6. Tools and Technologies

- Python
- Google Colab
- Pandas and NumPy
- Matplotlib and Seaborn
- Statsmodels
- SQLite
- SQL
- GitHub
- Kaggle

## 7. Project Methodology

### Module 1 – Dataset Loading and Inspection
- Imported Python libraries.
- Loaded the hotel booking dataset.
- Examined dataset dimensions, columns and data types.
- Identified numerical and categorical variables.
- Generated initial descriptive statistics.

### Module 2 – Exploratory Data Analysis
- Identified missing values.
- Checked duplicate records.
- Investigated inconsistent entries.
- Detected outliers using the IQR method.
- Performed group-wise analysis.
- Prepared the cleaned dataset.

### Module 3 – Statistics, Visualisation and Regression
- Calculated descriptive statistics.
- Performed correlation analysis.
- Created data visualisations.
- Developed regression without interaction.
- Developed regression with interaction.
- Compared both regression models.
- Performed residual analysis.

### SQL – Data Extraction and Analysis
- Created a SQLite database with seven related tables.
- Performed SQL filtering and sorting.
- Used aggregate functions.
- Applied GROUP BY and HAVING.
- Performed INNER JOIN and LEFT JOIN.
- Connected SQL results with Python.

## 8. Business Findings

[Add your actual findings from Python and SQL analysis.]

## 9. Management Recommendations

[Add at least three recommendations based on your actual analytical results.]

## 10. Limitations

- The dataset contains historical booking information.
- The analysis covers two hotels in Portugal.
- Some variables contain missing values.
- Regression results show statistical relationships and do not independently prove causation.
- The findings may not represent every hotel or current market conditions.

## 11. Repository Structure

- `notebooks/` – Python and SQL notebooks.
- `data/` – Cleaned dataset and data dictionary.
- `database/` – SQLite database.
- `sql/` – SQL schema and queries.
- `outputs/` – Analysis results and output files.

## 12. References

Hotel Booking Demand Dataset – Kaggle:

https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand

Original Research Paper:

https://doi.org/10.1016/j.dib.2018.11.126
## 14. Kaggle Notebook

Public Kaggle Notebook:

[Hotel Revenue Management – Data Analysis and Regression](https://www.kaggle.com/code/ritesh5500/hotel-revenue-management-data-analysis-and-regre)
## 15. SQL Query Register

The following SQL queries analyse hotel bookings, room prices and market segments to support the Hotel Revenue Management business case.

| No. | SQL Skill | Business Question | Query File and Line | Output Summary and Business Meaning |
|---|---|---|---|---|
| 1 | SELECT, FROM, ORDER BY, LIMIT | Which 10 bookings have the highest ADR? | `sql/hotel_revenue_management_queries.sql`, Lines 6–10 | The highest ADR was 5,400 for booking ID 38,749. The query identifies unusually high room rates that hotel managers may need to investigate. |
| 2 | WHERE, AND, OR, BETWEEN | Which bookings have ADR between 50 and 200, lead time of at least 30 days, and either two or more adults or children? | `sql/hotel_revenue_management_queries.sql`, Lines 13–19 | The query returned 41,926 qualifying bookings. ADR ranged from 50 to 200. These results help identify bookings meeting the selected room-rate, advance-booking and guest conditions. |
