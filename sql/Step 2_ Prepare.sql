-- Objective:
-- The goal of this step is to load, clean, and organize the Global Earthquake-Tsunami dataset so it is analysis-ready. This includes validating data integrity, ensuring correct data types, handling nulls, creating derived fields (year, decade, magnitude/depth bins), and buildling geography points for mapping and dashboards.

-- Key Actions:
-- * Ensure correct data types using SAFE_CAST.
-- * Normalize the tsunami target to BOOLEAN.
-- * Create derived fields: event_data, event_year, event_month, and event_decade.
-- * Create categorical bins: magnitude_category, depth_range.
-- * Create a GEOG (ST_GEOGPOINT) column for mapping.
-- * Write cleaned results to a new table and run validation checks.