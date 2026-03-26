
# KPI 1 — Revenue, Cost y Profit by month
SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    SUM(revenue) AS total_revenue,
    SUM(cost) AS total_cost,
    SUM(revenue - cost) AS profit
FROM financial_data
GROUP BY month
ORDER BY month;


#KPI 2 — Margen de ganancia by  product
SELECT
    product,
    SUM(revenue) AS revenue,
    SUM(cost) AS cost,
    ROUND((SUM(revenue - cost) / SUM(revenue)) * 100, 2) AS profit_margin_pct
FROM financial_data
GROUP BY product
ORDER BY profit_margin_pct DESC;


#KPI 3 — Revenue by region
SELECT
    region,
    SUM(revenue) AS total_revenue
FROM financial_data
GROUP BY region
ORDER BY total_revenue DESC;


#KPI 4 — Units sold per product
SELECT
    product,
    SUM(units_sold) AS total_units_sold
FROM financial_data
GROUP BY product
ORDER BY total_units_sold DESC;


#KPI 5 — Top months by profitability
    
    SELECT
    DATE_FORMAT(date, '%Y-%m') AS month,
    ROUND(SUM(revenue - cost), 2) AS profit
FROM financial_data
GROUP BY month
ORDER BY profit DESC
LIMIT 5;
