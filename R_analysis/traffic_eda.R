
# ANATOMY OF TRAFFIC JAMS
# Person 2 - R Analysis and EDA

library(data.table)
library(ggplot2)
library(dplyr)

# 1. SET PATHS
base_dir <- "Traffic_CBP"
out_dir <- file.path(base_dir, "R_analysis")
plot_dir <- file.path(out_dir, "plots")

dir.create(plot_dir, recursive = TRUE, showWarnings = FALSE)

# 2. LOAD DATA
traffic <- fread(file.path(base_dir, "traffic_data_clean.csv"))

cat("Data loaded:", nrow(traffic), "rows\n")

# 3. SUMMARY STATISTICS - FULL DATA
summary_stats <- traffic %>%
  summarise(
    mean_volume = mean(volume, na.rm = TRUE),
    median_volume = median(volume, na.rm = TRUE),
    sd_volume = sd(volume, na.rm = TRUE),
    mean_occupancy = mean(occ, na.rm = TRUE),
    median_occupancy = median(occ, na.rm = TRUE),
    sd_occupancy = sd(occ, na.rm = TRUE),
    mean_congestion = mean(conges_levl, na.rm = TRUE),
    median_congestion = median(conges_levl, na.rm = TRUE),
    sd_congestion = sd(conges_levl, na.rm = TRUE)
  )

print(summary_stats)
fwrite(summary_stats, file.path(out_dir, "summary_statistics.csv"))

# 4. HOURLY SUMMARIES - FULL DATA
traffic_by_hour <- traffic %>%
  group_by(hour) %>%
  summarise(avg_volume = mean(volume, na.rm = TRUE),
            .groups = "drop")

congestion_by_hour <- traffic %>%
  group_by(hour) %>%
  summarise(avg_congestion = mean(conges_levl, na.rm = TRUE),
            .groups = "drop")

p1 <- ggplot(traffic_by_hour, aes(hour, avg_volume)) +
  geom_line() + geom_point() +
  labs(title = "Average Traffic Volume by Hour",
       x = "Hour of Day", y = "Average Traffic Volume") +
  theme_minimal()

ggsave(file.path(plot_dir, "traffic_by_hour.png"),
       p1, width = 8, height = 5, dpi = 300)

p2 <- ggplot(congestion_by_hour, aes(hour, avg_congestion)) +
  geom_line() + geom_point() +
  labs(title = "Average Congestion Level by Hour",
       x = "Hour of Day", y = "Average Congestion Level") +
  theme_minimal()

ggsave(file.path(plot_dir, "congestion_by_hour.png"),
       p2, width = 8, height = 5, dpi = 300)

# 5. SAMPLE DATA FOR HEAVY PLOTS
set.seed(123)
sample_n <- min(100000, nrow(traffic))
traffic_sample <- traffic[sample(.N, sample_n)]

# 6. TRAFFIC VOLUME DISTRIBUTION
p3 <- ggplot(traffic_sample, aes(volume)) +
  geom_histogram(bins = 50, na.rm = TRUE) +
  labs(title = "Distribution of Traffic Volume",
       x = "Traffic Volume", y = "Frequency") +
  theme_minimal()

ggsave(file.path(plot_dir, "volume_distribution.png"),
       p3, width = 8, height = 5, dpi = 300)

# 7. VOLUME VS CONGESTION
p4 <- ggplot(traffic_sample, aes(volume, conges_levl)) +
  geom_point(alpha = 0.2, na.rm = TRUE) +
  geom_smooth(method = "lm", na.rm = TRUE) +
  labs(title = "Traffic Volume vs Congestion Level",
       x = "Traffic Volume", y = "Congestion Level") +
  theme_minimal()

ggsave(file.path(plot_dir, "volume_vs_congestion.png"),
       p4, width = 8, height = 5, dpi = 300)

# 8. CONGESTION BY DAY
p5 <- ggplot(traffic_sample,
             aes(day_of_week, conges_levl)) +
  geom_boxplot(na.rm = TRUE) +
  labs(title = "Congestion Level by Day of Week",
       x = "Day of Week", y = "Congestion Level") +
  theme_minimal()

ggsave(file.path(plot_dir, "congestion_by_day.png"),
       p5, width = 8, height = 5, dpi = 300)

# 9. OCCUPANCY VS CONGESTION
p6 <- ggplot(traffic_sample, aes(occ, conges_levl)) +
  geom_point(alpha = 0.2, na.rm = TRUE) +
  geom_smooth(method = "lm", na.rm = TRUE) +
  labs(title = "Occupancy vs Congestion Level",
       x = "Occupancy", y = "Congestion Level") +
  theme_minimal()

ggsave(file.path(plot_dir, "occupancy_vs_congestion.png"),
       p6, width = 8, height = 5, dpi = 300)

# 10. DAILY SUMMARIES
congestion_by_day <- traffic %>%
  group_by(day_of_week) %>%
  summarise(avg_congestion = mean(conges_levl, na.rm = TRUE),
            .groups = "drop")

volume_by_day <- traffic %>%
  group_by(day_of_week) %>%
  summarise(avg_volume = mean(volume, na.rm = TRUE),
            .groups = "drop")

fwrite(congestion_by_day, file.path(out_dir, "congestion_by_day.csv"))
fwrite(volume_by_day, file.path(out_dir, "volume_by_day.csv"))

cat("Analysis completed. Files saved in:", out_dir, "\n")

