
# KPI 1 — Revenue, Cost y Profit por mes
SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(revenue) AS total_revenue,
    SUM(cost) AS total_cost,
    SUM(revenue - cost) AS profit
FROM financial_data
GROUP BY month
ORDER BY month;


#KPI 2 — Margen de ganancia por producto
SELECT
    product,
    SUM(revenue) AS revenue,
    SUM(cost) AS cost,
    ROUND((SUM(revenue - cost) / SUM(revenue)) * 100, 2) AS profit_margin_pct
FROM financial_data
GROUP BY product
ORDER BY profit_margin_pct DESC;


#KPI 3 — Revenue por región
SELECT
    region,
    SUM(revenue) AS total_revenue
FROM financial_data
GROUP BY region
ORDER BY total_revenue DESC;


#KPI 4 — Unidades vendidas por producto
SELECT
    product,
    SUM(units_sold) AS total_units_sold
FROM financial_data
GROUP BY product
ORDER BY total_units_sold DESC;


#KPI 5 — Top meses por rentabilidad
SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    ROUND(SUM(revenue - cost), 2) AS profit
FROM financial_data
GROUP BY month
ORDER BY profit DESC
LIMIT 5;
