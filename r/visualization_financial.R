library(tidyverse)
library(patchwork)

df <- read.csv("data/raw/financial_data.csv")

# Crear variables
df <- df %>%
  mutate(
    profit = revenue - cost,
    margin = profit / revenue
  )

# Gráfico 1
g1 <- ggplot(df, aes(x = product, y = profit)) +
  stat_summary(fun = mean, geom = "bar", fill = "steelblue") +
  ggtitle("Profit by Product")

# Gráfico 2
g2 <- ggplot(df, aes(x = region, y = profit)) +
  stat_summary(fun = mean, geom = "bar", fill = "darkgreen") +
  ggtitle("Profit by Region")

# Gráfico 3
g3 <- ggplot(df, aes(x = profit)) +
  geom_histogram(bins = 30, fill = "orange") +
  ggtitle("Profit Distribution")

# Combinar gráficos
(g1 + g2) / g3