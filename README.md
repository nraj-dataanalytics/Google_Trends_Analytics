# Google Trends – Jobs Analytics Dashboard (Power BI)

## Overview
This is a **Power BI project** that analyzes **Google Trends search interest** for job-related keywords such as *Power BI*, *Developer*, *Data Analyst*, and *Jobs*, with a primary focus on **India**.  
The dashboard converts Google Trends data into clear insights on **job market demand, geographic interest, and time-based trends**.

---

## Objective
- Track job-related keyword interest over time
- Compare long-term vs short-term (past 7 days) search trends
- Analyze geographic interest by country/region
- Identify **top and rising related topics** in job searches
- Build an interactive, API-driven Power BI dashboard

---

## Dashboard Features
- **Time Series Analysis**
  - All-time search interest trends
  - Past 7 days trend comparison

- **Geographic Analysis**
  - Country-level interest distribution using map visuals

- **Keyword Insights**
  - Comparison of multiple job-related keywords
  - Top and Rising related topics

- **Interactive Experience**
  - Dynamic filters and slicers
  - Clear KPI cards and trend visuals

---

## Data Source
- **Google Trends**, accessed via **SerpAPI**
- Data is fetched live using **Power Query (M)** API calls inside Power BI

> ⚠️ A SerpAPI key is required.  
> Create an account at https://serpapi.com and paste your API key into the Power Query scripts locally.

---

## Data Preparation & Modeling
- API data ingestion handled using **Power Query (M)**
- JSON responses transformed into analytical tables
- Time-series and geographic datasets modeled for reporting
- DAX used for aggregations, KPIs, and comparisons

---

## Project Structure
scripts/
├── 01_parameters.m
├── 02_by_country_geo_map.m
├── 03_base_by_date_all_time.m
├── 04_base_past_7_days.m
├── 05_related_topics.m
└── 06_dax_measures.txt

Backgrounds/
Icons/
Flags/
Map JSON/
pbix file/
docs/

---

## Tools Used
- Power BI Desktop
- Power Query (M)
- DAX
- SerpAPI (Google Trends engine)

---

## Skills Demonstrated
- API integration in Power BI
- Power Query (M) scripting
- Time-series analysis
- Geographic data visualization
- Data modeling and DAX
- Dashboard design and storytelling

---

## Notes
- API keys are **not stored in the repository**
- Data refresh depends on SerpAPI usage limits
- This project is intended for **portfolio and learning purposes**

---

## Conclusion
This project demonstrates my ability to integrate external APIs with Power BI, model real-world datasets, and deliver meaningful insights through interactive dashboards focused on **job market and skills demand analysis**.
