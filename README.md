![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/earthquake-tsunami-risk-analysis)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/earthquake-tsunami-risk-analysis)

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
- **Python / R** (optional) — additional cleaning, modeling, or plotting  
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
