library(tidyverse)

# Cargar datos
df <- read.csv("data/raw/financial_data.csv")

# Convertir fecha
df$date <- as.Date(df$date, format="%d/%m/%Y")

# Crear variables clave
df <- df %>%
  mutate(
    profit = revenue - cost,
    margin = profit / revenue,
    revenue_per_unit = revenue / units_sold
  )

# Revisar estructura
glimpse(df)

# Resumen general
summary(df)

# -----------------------------
# Análisis por producto
# -----------------------------
product_summary <- df %>%
  group_by(product) %>%
  summarise(
    avg_revenue = mean(revenue),
    avg_cost = mean(cost),
    avg_profit = mean(profit),
    avg_margin = mean(margin)
  ) %>%
  arrange(desc(avg_profit))

print(product_summary)

# -----------------------------
# Análisis por región
# -----------------------------
region_summary <- df %>%
  group_by(region) %>%
  summarise(
    avg_revenue = mean(revenue),
    avg_profit = mean(profit),
    avg_margin = mean(margin)
  ) %>%
  arrange(desc(avg_profit))

print(region_summary)