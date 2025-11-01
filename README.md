![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/earthquake-tsunami-risk-analysis)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/earthquake-tsunami-risk-analysis)

## 📊 Interactive Dashboard

Explore the full interactive visualization on Tableau Public:  
🔗 [**View Dashboard on Tableau Public**](https://public.tableau.com/views/EarthquakeTsunamiRiskAnalysis/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

This interactive panel presents the main trends in Earthquake and Tsunami Risk Analysis (2001–2022):
- 🌋 Total Earthquakes & Tsunami Events by Year  
- 🌎 Map of Global Events  
- 📈 Average Magnitude vs. Depth over Time  
- ⚡ Correlation between Earthquake Frequency and Tsunami Incidents

---

# 🌊 Earthquake–Tsunami Risk Analysis (2001–2022)

This project analyzes global earthquake and tsunami risk trends from 2001 to 2022. Using SQL in Google BigQuery for data preparation and analysis, and Tableau for visualization, the project explores how seismic characteristics (magnitude, depth, location) relate to tsunami generation and identifies geographic and temporal risk patterns.

---

## 📦 Dataset

**Source**: [Global Earthquake–Tsunami Risk Assessment Dataset (Kaggle)](https://www.kaggle.com/datasets/ahmeduzaki/global-earthquake-tsunami-risk-assessment)  
**Provider**: Ahmed Uzaki (Kaggle)  

**Filename (example)**: `earthquake_data_tsunami.csv`  
**Location**: Stored in the `data/` folder

**Key fields include**:
- `magnitude` — Richter scale magnitude  
- `depth_km` — earthquake depth (km)  
- `latitude`, `longitude` — event coordinates  
- `Year`, `Month` — temporal fields  
- `tsunami` / `tsunami_classification` — tsunami indicator (binary)  
- additional seismological attributes (cdi, mmi, significance, nst, dmin, gap)

---

## 🔍 Business Task

The main goal of this analysis is to evaluate global earthquake behavior and assess tsunami risk by:

- Identifying seismic parameters most associated with tsunami events (magnitude, depth, location).  
- Visualizing temporal trends (yearly/monthly) in earthquakes and tsunami frequency.  
- Mapping geographic hotspots and producing actionable recommendations for preparedness and monitoring.

---

## 📊 Tools & Technology

- **Google Cloud BigQuery** — data cleaning, transformation, and SQL analysis  
- **Tableau** — interactive dashboards and visual storytelling  
- **Google Slides / PowerPoint** — presentation for stakeholders   
- **Git & GitHub** — version control and project hosting

---

## 📁 Project Structure

```plaintext
earthquake-tsunami-risk-analysis/
├── data/
│   └── earthquake_data_tsunami.csv
├── sql/
│   ├── 01_step1_ask.sql
│   ├── 02_step2_prepare.sql
│   ├── 03_step3_process.sql
│   ├── 04_step4_analyze.sql
│   └── 05_step5_share.sql
├── outputs/
│   ├── charts/
│   │   ├── avg_magnitude_avg_depth_by_year.png
│   │   ├── total_earthquakes_vs_tsunami_by_year.png
│   │   └── depth_vs_magnitude_scatter.png
│   └── dashboards/
│       └── tableau_dashboard_link.md
├── presentation/
│   └── Earthquake_Presentation_Link.md
├── README.md
└── LICENSE
```

---

## 🧮 SQL Query (Yearly Trends)

```sql
-- sql/Step 4_ Analyze.sql
SELECT
  SAFE_CAST(Year AS INT64) AS year,
  ROUND(AVG(magnitude), 2) AS avg_magnitude,
  ROUND(AVG(depth_km), 2) AS avg_depth_km,
  COUNT(*) AS total_earthquakes,
  SUM(CASE WHEN tsunami = 1 THEN 1 ELSE 0 END) AS tsunami_events,
  ROUND(100.0 * SUM(CASE WHEN tsunami = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS tsunami_pct
FROM
  `plenary-ability-463920-b3.earthquake_tsunami_risk.global_earthquake_tsunami_cleaned`
GROUP BY
  year
ORDER BY
  year;
```

---

## 📈 Analysis Output
The final visualizations, saved in the `outputs/charts` folder, include:
- `avg_magnitude_avg_depth_by_year.png` — trend lines for average magnitude and depth (2001–2022).
- `total_earthquakes_vs_tsunami_by_year.png` — counts of total quakes vs tsunami events by year.
- `depth_vs_magnitude_scatter.png` — scatter showing depth vs magnitude colored by tsunami events.

---

## 🧾 Presentation
The final presentation (in the `presentation/` folder) summarizes methods, recommendations and visualizations:
- Project purpose and data overview
- Data preparation steps (Step 2)
- Processing and modeling approach (Step 3)
- Key findings (Step 4)
- Visualizations and interactive dashboard (Step 5)
- Actionable recommendations (Step 6)

---

## ✅ Next Steps
- Build an interactive Tableau dashboard and publish to Tableau Public. 
- Train and evaluate a baseline ML classifer for tsunami predicition (features: magnitude, depth, dmin, gap, etc.)
- Enrich dataset with coastal population and infrastructure layers for impact assessment.
- Share findings with stakeholders and emergency management teams

---

## 🙌 Acknowledgments
- Dataset courtesy of [Ahmed Uzaki on Kaggle](https://www.kaggle.com/datasets/ahmeduzaki/global-earthquake-tsunami-risk-assessment)
- Tools powered by Google Cloud, BigQuery, SQL, Tableau and open source communities.

---

👨‍💻 Author

**Sergio E. Sagastume**
Data Analyst | SQL | Tableau | R
