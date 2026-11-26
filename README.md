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
| 3 | IN, LIKE, INNER JOIN | Which bookings belong to travel-agency market segments and countries beginning with P? | `sql/hotel_revenue_management_queries.sql`, Lines 22–30 | The query returned 20 top-ADR bookings. All were from Portugal (PRT): 19 from Online TA and 1 from Offline TA/TO. ADR ranged from 331.43 to 5,400. This helps examine high-priced bookings received through travel-agency channels. |
| 4 | COALESCE, IS NULL, GROUP BY, COUNT | How are hotel bookings distributed by country, and are any country values still missing? | `sql/hotel_revenue_management_queries.sql`, Lines 33–44 | The database contains 87,395 records, with zero remaining SQL NULL country values. Portugal (PRT) has the highest booking count at 27,453, while 452 records are classified as Unknown. These results help understand the geographical distribution of hotel bookings. |
| 5 | COUNT, SUM, AVG, MIN, MAX, ROUND | What is the overall booking, guest and room-rate summary? | `sql/hotel_revenue_management_queries.sql`, Lines 47–53 | The database contains 87,395 bookings and 176,997 total recorded guests. Average ADR is 106.34, minimum ADR is 0 and maximum ADR is 5,400. These figures provide an overall view of booking volume and room pricing. |
| 6 | GROUP BY, HAVING, INNER JOIN, AVG, COUNT | Which market segments have at least 1,000 bookings, and what is their average ADR? | `sql/hotel_revenue_management_queries.sql`, Lines 56–64 | Five segments meet the 1,000-booking condition. Online TA has 51,618 bookings and average ADR of 118.17, while Corporate has 4,212 bookings and average ADR of 68.15. |
| 7 | INNER JOIN, GROUP BY, AVG, COUNT | How do City Hotels and Resort Hotels compare in booking volume and average ADR? | `sql/hotel_revenue_management_queries.sql`, Lines 67–74 | City Hotel recorded 53,428 bookings with an average ADR of 110.99. Resort Hotel recorded 33,967 bookings with an average ADR of 99.03. This comparison helps managers understand differences in booking volume and room pricing between the two hotel types. |
| 8 | LEFT JOIN, GROUP BY, COUNT, AVG | How many bookings belong to each market segment, and what is their average ADR? | `sql/hotel_revenue_management_queries.sql`, Lines 77–84 | Online TA recorded the highest number of bookings with 51,618 and an average ADR of 118.17. Undefined recorded only 2 bookings. The analysis helps managers understand booking distribution and room pricing across market segments. |
| 9 | CASE WHEN, GROUP BY, ROUND, AVG, COUNT | How can hotel bookings be classified into lower, middle and upper ADR groups? | `sql/hotel_revenue_management_queries.sql`, Lines 87–98 | The Lower ADR Group contains 21,876 bookings with an average ADR of 48.77. The Middle ADR Group contains 43,702 bookings with an average ADR of 100.06. The Upper ADR Group contains 21,817 bookings with an average ADR of 176.64. This classification helps managers compare different room-price groups. |
| 10 | Multiple INNER JOIN, GROUP BY, AVG, COUNT | How does average ADR vary across market segments within City Hotels and Resort Hotels? | `sql/hotel_revenue_management_queries.sql`, Lines 100–109 | City Hotel recorded 34,994 Online TA bookings with an average ADR of 119.78, while Resort Hotel recorded 16,624 Online TA bookings with an average ADR of 114.78. City Hotel's Direct segment had the highest average ADR at 120.85. This analysis helps managers compare pricing and booking patterns across hotel types and market segments. |
| 11 | INNER JOIN, GROUP BY, CASE WHEN, AVG, COUNT | How does average room pricing change across months for City Hotels and Resort Hotels? | `sql/hotel_revenue_management_queries.sql`, Lines 112–127 | The query generated 52 monthly hotel-group summaries covering 2015–2017. Resort Hotel recorded the highest monthly average ADR of 208.36 in August 2017, while its lowest was 45.77 in November 2015. This helps managers understand seasonal pricing patterns and plan room rates accordingly. |
