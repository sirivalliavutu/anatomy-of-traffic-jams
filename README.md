# 🚦 Anatomy of Traffic Jams
### Exploring Urban Traffic Patterns Through Data Visualization

## 📌 About the Project

**Anatomy of Traffic Jams** is a data visualization project that explores urban traffic patterns using fixed-sensor traffic data from Madrid, Spain.

The project analyzes congestion levels, traffic volume, and road occupancy to understand how traffic indicators vary across hours, days, sensors, and time periods. Using **R for exploratory data analysis** and **Tableau for visualization**, the project aims to uncover meaningful patterns and present them through clear, accessible visualizations.

## 🎯 Objectives

- Analyze traffic patterns across different hours and days of the week.
- Examine relationships between congestion level, traffic volume, and road occupancy.
- Identify sensors with relatively high congestion levels and traffic volume.
- Explore changes in traffic indicators over time.
- Compare traffic conditions during selected peak and non-peak periods.
- Communicate findings through visualizations and an integrated dashboard.

## 📊 Dataset

The project uses the **MMTD Madrid Fixed-Sensor Traffic Dataset**.

| Attribute | Details |
|---|---|
| Location | Madrid, Spain |
| Observation period | August 1–31, 2024 |
| Number of sensors | 2,780 |
| Time intervals | 2,976 |
| Sampling frequency | Every 15 minutes |
| Cleaned dataset size | 8,273,280 rows × 9 columns |

### Key Variables

- **Timestamp:** Date and time of each observation.
- **Sensor ID:** Identifier of the traffic monitoring sensor.
- **Congestion level (`conges_levl`):** Recorded congestion indicator.
- **Volume (`volume`):** Recorded traffic volume indicator.
- **Occupancy (`occ`):** Recorded road occupancy indicator.
- **Time-based attributes:** Hour and day of the week, used to study temporal patterns.

*Note: Congestion level, traffic volume, and occupancy are distinct indicators. Congestion level should not be interpreted as vehicle speed.*

## 🧹 Data Preparation

The data preparation workflow includes:

- Inspecting data structure and variable types.
- Checking for duplicate records and missing values.
- Preparing timestamp-related attributes.
- Reviewing the consistency of the cleaned dataset.
- Preparing analysis-ready data for R and Tableau.

Preprocessing documentation and the data dictionary are maintained in the `data/` directory.

## 🛠️ Tools and Technologies

| Tool | Purpose |
|---|---|
| R | Exploratory data analysis and statistical summaries |
| Tableau | Interactive charts and visual exploration |
| CSV | Data storage and exchange |
| GitHub | Version control, collaboration, and documentation |

## 📈 Analysis and Visualizations

The project investigates the following questions:

1. How does average congestion vary by hour?
2. How do volume and occupancy change throughout the day?
3. How does congestion vary across days of the week?
4. What relationships exist between congestion, volume, and occupancy?
5. Which sensors record relatively high congestion levels or traffic volume?
6. How do traffic indicators change over time?
7. What does the distribution of congestion levels reveal?
8. How do selected peak and non-peak periods compare?
9. What patterns can be observed during a selected day's traffic episode?

The Tableau workbook contains visualizations designed to explore these questions, including time-series charts, sensor comparisons, distribution plots, and a metric selector.

## 🔍 Preliminary Finding

The current Tableau analysis shows that **average congestion is higher during the selected peak periods than during the selected non-peak periods**.

The project's peak periods are defined within the analysis and should not be treated as universal or officially designated peak hours for Madrid. Additional findings will be documented after validating the completed charts.

## 📁 Repository Structure

```text
anatomy-of-traffic-jams/
├── data/
│   ├── Data Dictionary.ods
│   └── DATA PREPROCESSING NOTES.odt
├── R_analysis/
│   ├── traffic_eda.R
│   ├── summary_statistics.csv
│   ├── congestion_by_day.csv
│   ├── volume_by_day.csv
│   └── analysis plots
├── tableau/
│   ├── traffic_analysis.twbx
│   └── tableau_findings.md
├── dashboard/
└── README.md
```

*This structure reflects the intended organization. The files in each directory may change as the project develops.*

## 👥 Team Contributions

The project is developed collaboratively, with responsibilities divided across the following areas:

- **Data preparation:** Data extraction, cleaning, and documentation.
- **Exploratory data analysis:** Statistical summaries and plots using R.
- **Data visualization:** Tableau worksheets, comparisons, and findings.
- **Dashboard integration:** Development of the final dashboard and presentation of the project's findings.

Individual contributions will be documented according to the team's finalized responsibilities.

## ⚠️ Limitations

- The dataset covers one month of observations and may not represent seasonal or long-term traffic patterns.
- Missing observations may influence comparisons between traffic indicators.
- Relationships between variables do not establish causation.
- The analysis is limited to the indicators available in the dataset.
- Peak and non-peak periods are defined for this project and may not match official traffic classifications.

## 🚀 Future Scope

- Integrate the visualizations into a consolidated interactive dashboard.
- Expand comparisons across dates and sensors.
- Investigate unusual congestion patterns in greater detail.
- Extend the analysis to additional datasets or time periods.
- Explore traffic forecasting if suitable data and validation methods become available.

## 📌 Project Status

**In progress** — data preparation, exploratory analysis, Tableau visualizations, and final dashboard integration.

## 📚 Dataset and Resources

The original dataset citation and source link will be added after the team confirms the exact source reference.

---

*Developed as an academic data visualization project.*
