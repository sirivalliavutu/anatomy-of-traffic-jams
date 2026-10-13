# 🚦 Anatomy of Traffic Jams

### Exploring Urban Traffic Patterns Through Data Visualization

## 📌 About the Project

**Anatomy of Traffic Jams** is a collaborative data visualization project that explores urban traffic patterns using fixed-sensor traffic data from Madrid, Spain.

The project examines congestion levels, traffic volume, and road occupancy to understand how traffic indicators vary across hours, days, sensors, and time periods. Using **R for exploratory data analysis (EDA)** and **Tableau for interactive visualization**, the project transforms traffic observations into meaningful insights about urban traffic patterns.

## 🎯 Objectives

- Analyze traffic patterns across different hours and days of the week.
- Examine relationships between congestion level, traffic volume, and road occupancy.
- Identify sensors with relatively high congestion levels and traffic volume.
- Explore changes in traffic indicators over time.
- Compare traffic conditions during selected peak and non-peak periods.
- Communicate findings through data visualizations and an integrated dashboard.

## 📊 Dataset

The project uses the **MMTD Madrid Fixed-Sensor Traffic Dataset**, covering traffic observations in Madrid, Spain, from August 1–31, 2024.

| Attribute            | Details                    |
| -------------------- | -------------------------- |
| Location             | Madrid, Spain              |
| Observation period   | August 1–31, 2024          |
| Number of sensors    | 2,780                      |
| Time intervals       | 2,976                      |
| Sampling frequency   | Every 15 minutes           |
| Cleaned dataset size | 8,273,280 rows × 9 columns |

### Master Dataset

The full cleaned dataset is hosted on Google Drive because of GitHub's file-size limitations.

📥 **[Download traffic_data_clean.csv](https://drive.google.com/file/d/1GYBF3W_8RmMJT429qfFznQu-akPWj_3s/view?usp=drive_link)**

### Supporting Data Files

The repository includes supporting files for understanding and validating the analysis, such as:

- `traffic_sample.csv` — sample of the cleaned dataset.
- `Data Dictionary.ods` — variable definitions and descriptions.
- `DATA PREPROCESSING NOTES.odt` — documentation of the data preparation process.

### Key Variables

- **Timestamp:** Date and time of each observation.
- **Sensor ID:** Identifier of the traffic monitoring sensor.
- **Congestion level (`conges_levl`):** Recorded congestion indicator.
- **Volume (`volume`):** Recorded traffic volume indicator.
- **Occupancy (`occ`):** Recorded road occupancy indicator.
- **Time-based attributes:** Hour, date, and day of the week used for temporal analysis.

*Note: Congestion level, volume, and occupancy are distinct traffic indicators. Congestion level should not be interpreted as vehicle speed.*

## 🧹 Data Preparation

The data preparation workflow involved:

- Inspecting the dataset structure and variable types.
- Checking for duplicate records and missing values.
- Preparing timestamp-related attributes for temporal analysis.
- Reviewing the consistency of the cleaned dataset.
- Preparing analysis-ready data for R and Tableau.

Supporting documentation and variable definitions are available in the `data/` directory.

## 🛠️ Tools and Technologies

| Tool    | Purpose                                                   |
| ------- | --------------------------------------------------------- |
| R       | Exploratory data analysis and statistical summaries       |
| Tableau | Interactive visualizations and dashboard exploration      |
| CSV     | Data storage and exchange                                 |
| GitHub  | Version control, collaboration, and project documentation |

## 📈 Analysis and Visualizations

The project explores the following research questions:

1. How does average congestion vary by hour?
2. How do traffic volume and road occupancy change throughout the day?
3. How does congestion vary across days of the week?
4. What relationships exist between congestion, volume, and occupancy?
5. Which sensors record relatively high congestion levels or traffic volume?
6. How do traffic indicators change over time?
7. What does the distribution of congestion levels reveal?
8. How do selected peak and non-peak periods compare?
9. What patterns can be observed during a selected day's traffic episode?

The completed analysis includes time-series exploration, comparisons across sensors and days, distribution analysis, and comparisons of selected traffic periods. The Tableau workbook brings the visualizations together for interactive exploration.

## 🔍 Key Findings

The completed Tableau analysis indicates that **average congestion is higher during the selected peak periods than during the selected non-peak periods**.

The project also explores temporal variations in traffic indicators, differences across sensors, and relationships between congestion, traffic volume, and road occupancy.

Peak and non-peak periods are defined specifically for this analysis and should not be interpreted as official or universal traffic classifications for Madrid.

*Additional findings should be included here when supported by the final charts and statistical summaries.*

## 📊 Tableau Workbook

The packaged Tableau workbook is available through Google Drive.

📥 **[View / Download Anatomy of Traffic Jams — Tableau Workbook (.twbx)](https://drive.google.com/file/d/12vVVgeDjf3pZtmoT1Vx1Q3N96oiG57-A/view?usp=sharing)**

Download the workbook and open it in Tableau Desktop to explore the visualizations.

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
│   └── tableau_findings.md
├── dashboard/
│   └── dashboard.md
└── README.md
```

*The structure above is illustrative. Refer to the actual repository for the current list of files.*

## 👥 Team Contributions

This project was developed collaboratively, with responsibilities distributed across four major areas:

- **Data preparation:** Data extraction, cleaning, and documentation.
- **Exploratory data analysis:** Statistical summaries and plots using R.
- **Data visualization:** Tableau worksheets, comparisons, and findings.
- **Dashboard integration:** Consolidation of visualizations and presentation of the analysis.

Individual contributions reflect the responsibilities undertaken by each team member.

## ⚠️ Limitations

- The dataset covers one month of observations and may not represent seasonal or long-term traffic patterns.
- Missing observations, if present, may affect comparisons between traffic indicators.
- Relationships between variables do not establish causation.
- The analysis is limited to the indicators available in the dataset.
- Project-defined peak and non-peak periods may differ from official traffic classifications.

## 🚀 Future Scope

Potential extensions of the project include:

- Expanding the analysis to additional months or years.
- Investigating unusual congestion patterns in greater detail.
- Exploring traffic forecasting using suitable data and validation methods.
- Incorporating additional traffic-related variables.
- Extending the dashboard with further comparisons and analytical features.

## 📌 Project Status

**Completed** — data preparation, exploratory data analysis, Tableau visualizations, and dashboard development have been completed.

## 📚 Dataset and Resources

The original dataset citation and source details should be added here using the dataset's verified source reference.

---

*Developed as a collaborative academic data visualization project.*
