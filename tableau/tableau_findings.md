#Tableau Analysis and Findings

## 1. Project Overview

**Project:** Anatomy of Traffic Jams  
**Dataset:** MMTD Madrid Fixed-Sensor Traffic Dataset  
**Study period:** 1–31 August 2024  
**Tool:** Tableau

### Objective

To investigate when and where congestion occurs, examine its relationship with traffic volume and occupancy, and visualize how a congestion episode develops and recovers.

### Traffic Indicators

- **Volume:** Measures of traffic volume recorded by sensors.
- **Occupancy (`occ`):** The occupancy measure recorded by the traffic sensors.
- **Congestion level (`conges_levl`):** The primary indicator used in this project to examine congestion patterns.

*Note: The dataset does not contain a speed variable. Congestion level must not be interpreted as speed.*

## 2. When Does Congestion Occur?

### Average Congestion by Hour
**Purpose:** Identify hours with relatively high and low average congestion.

**Finding:** To be completed after inspecting the hourly congestion chart.

### Average Volume by Hour
**Purpose:** Examine how traffic volume changes throughout the day.

**Finding:** To be completed after inspecting the chart.

### Average Occupancy by Hour
**Purpose:** Examine hourly variation in sensor occupancy.

**Finding:** To be completed after inspecting the chart.

### Average Congestion by Day of Week
**Purpose:** Compare average congestion across Monday through Sunday.

**Finding:** To be completed after comparing the daily values.

## 3. Where Does Congestion Occur?

### Top Sensors by Congestion
**Purpose:** Identify the ten sensors with the highest average recorded congestion level.

**Finding:** To be completed after checking the chart.

### Top Sensors by Volume
**Purpose:** Identify the ten sensors with the highest average traffic volume.

**Finding:** To be completed after checking the chart.

## 4. Relationships Between Traffic Indicators

### Volume vs Congestion
**Purpose:** Examine the association between traffic volume and congestion level.

**Finding:** To be completed after inspecting the scatter plot and trend.

### Occupancy vs Congestion
**Purpose:** Examine the association between occupancy and congestion level.

**Finding:** To be completed after inspecting the scatter plot and trend.

### Volume vs Occupancy
**Purpose:** Examine the association between traffic volume and occupancy.

**Finding:** To be completed after inspecting the scatter plot and trend.

## 5. How Does Congestion Change Over Time?

### Congestion Over Time
**Purpose:** Examine changes and fluctuations in congestion throughout the study period.

**Finding:** To be completed after inspecting the time-series chart.

### Volume and Congestion Over Time
**Purpose:** Compare temporal patterns in traffic volume and congestion.

**Finding:** To be completed after comparing the two series.

## 6. Anatomy of a Traffic Jam

### Congestion Episode
**Selected date:** 1 August 2024

**Purpose:** Examine a single day's congestion pattern to identify possible buildup, peak, and recovery phases.

**Finding:** To be completed after inspecting the episode chart.

### Episode Volume and Congestion
**Purpose:** Compare traffic volume and congestion during the selected episode.

**Finding:** To be completed after inspecting both series.

## 7. Peak vs Non-Peak Analysis

**Peak-hour definition:** 07:00–10:00 and 17:00–20:00, based on the project's calculated field.

**Confirmed observation:** The Tableau chart shows higher average congestion during the defined peak periods than during non-peak periods.

**Interpretation:** Under the selected time classification, peak periods have higher average congestion. This comparison establishes an association, not causation.

## 8. Distribution and Variation

### Congestion Distribution
**Purpose:** Examine the distribution of recorded congestion levels.

**Finding:** To be completed after inspecting the histogram.

### Congestion Variation by Day
**Purpose:** Compare the spread and variation of congestion across days of the week.

**Status:** Chart requires verification before reporting findings.

### Congestion Control-Style Chart
**Purpose:** Compare congestion over time with its overall average as a reference for examining variation.

**Note:** The current chart includes an average reference line. It does not yet establish statistical control limits.

## 9. Percentage Analysis

### Peak Period Percentage
**Purpose:** Compare the share of observations classified as peak and non-peak.

**Peak:** To be recorded from Tableau.  
**Non-peak:** To be recorded from Tableau.

**Finding:** To be completed after verifying the displayed percentages.

## 10. Interactive Metric Selector

The Metric Selector allows users to switch between volume, occupancy, and congestion in the same hourly view.

**Purpose:** Enable interactive comparison of different traffic indicators without creating a separate chart for every metric.

## 11. Key Insights

The final key insights will be written after verifying the chart patterns, sensor rankings, and percentage values.

The analysis will focus on:

1. Hourly and weekly congestion patterns.
2. Differences in congestion across sensor locations.
3. Relationships between volume, occupancy, and congestion.
4. Changes during the selected congestion episode.
5. Differences between defined peak and non-peak periods.
6. Distribution and variation in recorded congestion levels.

## 12. Interpretation Limitations

- The findings describe patterns in the selected Madrid dataset and study period.
- Relationships between traffic indicators do not by themselves establish causation.
- The selected peak hours are project-defined time intervals.
- Missing values may affect some calculations.
- The congestion episode is a selected example and should not be treated as representative of every traffic jam.
- The control-style chart currently uses an average reference line, not validated upper and lower statistical control limits.
