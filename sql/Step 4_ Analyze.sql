-- Objective:
-- This goal of this step is to explore and analyze the cleaned earthquake dataset to uncover patterns, trends, and relationships between earthquake characteristics and tsunami occurrences from 2001-2022.

-- This includes examing how magnitude, depth, and location influence the likelihood of tsunamis and identifying regions with higher seismic activity or risk.

-- Key Actions:
-- * Calculating yearly and monthly trends in earthquake frequency and magnitude.
-- * Identifying correlations between magnitude, depth, and tsunami classification.
-- * Analyzing geographic patterns of earthquakes and tsunami-related events.
-- * Preparing summary statistics for visualization and interpretation.

-- Dataset: earthquake_tsunami_cleaned

-- Yearly trends of average magnitude, depth, and tsunami frequency
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
