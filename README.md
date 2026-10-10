# anatomy-of-traffic-jams
Data Visualization CBP: Analyzing when, where, and how traffic jams develop and recover.
# Anatomy of Traffic Jams

## Data Visualization Laboratory — CBP Project

### Project Overview
Anatomy of Traffic Jams is a data visualization project that explores traffic volume, occupancy, and congestion patterns using traffic sensor data from Madrid, Spain.

The project uses R and ggplot2 for exploratory data analysis (EDA) and Tableau for interactive visualizations and dashboard development.

### Objectives
- Analyze traffic volume and congestion patterns.
- Explore how congestion varies by hour and day of the week.
- Investigate the relationship between traffic volume, occupancy, and congestion.
- Present findings through clear visualizations and dashboards.

### Dataset
- **Source:** MMTD Madrid Traffic Dataset
- **Number of observations:** 8,273,280
- **Number of sensors:** 2,780
- **Variables:** Timestamp, sensor ID, traffic volume, occupancy, congestion level, date, time, hour, and day of the week.

The cleaned dataset is maintained separately because of its large file size.

### Tools and Technologies
- R
- RStudio
- data.table
- dplyr
- ggplot2
- Tableau
- GitHub

### R Analysis and Visualizations
The exploratory data analysis includes six visualizations:

1. Average Traffic Volume by Hour
2. Average Congestion Level by Hour
3. Distribution of Traffic Volume
4. Traffic Volume vs. Congestion Level
5. Congestion Level by Day of Week
6. Occupancy vs. Congestion Level

### Summary Statistics

| Variable | Mean | Median | Standard Deviation |
|---|---:|---:|---:|
| Traffic Volume | 83.74 | 67 | 68.08 |
| Occupancy | 2.38 | 1 | 5.32 |
| Congestion Level | 10.33 | 8 | 9.55 |

### Key Findings
- Traffic volume and congestion show a positive relationship in the sampled scatter plot.
- Congestion distributions differ across days of the week.
- High congestion observations occur across multiple days.
- Additional hourly analysis helps investigate when traffic volume and congestion tend to be highest.

### Project Structure

```text
Traffic_CBP/
├── R_analysis/
│   ├── traffic_eda.R
│   ├── summary_statistics.csv
│   ├── congestion_by_day.csv
│   ├── volume_by_day.csv
│   └── plots/
│       ├── traffic_by_hour.png
│       ├── congestion_by_hour.png
│       ├── volume_distribution.png
│       ├── volume_vs_congestion.png
│       ├── congestion_by_day.png
│       └── occupancy_vs_congestion.png
└── README.md
```

### Team Workflow
1. Data acquisition and preprocessing
2. R-based exploratory data analysis
3. Tableau analysis and calculations
4. Dashboard development and storytelling

### Conclusion
This project uses data visualization to investigate traffic patterns and understand how traffic volume and occupancy relate to congestion. The results support further analysis and the development of an interactive Tableau dashboard.
