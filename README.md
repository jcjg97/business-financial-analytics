# 📊 Business Financial Analytics & Machine Learning Project

## 🚀 Overview

This project presents a complete **end-to-end financial analytics solution**, combining data processing, machine learning, and business intelligence tools to analyze profitability and support data-driven decision-making.

The objective is to simulate a realistic business environment and identify key drivers of financial performance such as revenue, cost efficiency, and profitability.

---

## 🧠 Key Features

* Financial data simulation with realistic assumptions
* Advanced cost modeling (quadratic cost function)
* Feature engineering for business insights
* Machine Learning model for profit prediction
* Interactive dashboards (Power BI & Excel)
* SQL-based data structure and queries
* Complementary analysis using R

---

## 🏗️ Project Structure

```
business-financial-analytics/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_eda_financial_data.ipynb
│   ├── 02_feature_engineering.ipynb
│   └── 03_ml_model.ipynb
│
├── python/
│   └── pipeline.py
│
├── r/
│   ├── eda_financial_analysis.R
│   └── visualization_financial.R
│
├── sql/
│   ├── 01_create_schema.sql
│   ├── 02_load_data.sql
│   └── 03_queries.sql
│
├── powerbi/
│   └── financial_dashboard.pbix
│
├── excel/
│   └── financial_dashboard.xlsx
│
├── reports/
│   └── financial_analysis_report.md
│
└── README.md
```

---

## ⚙️ Financial Model

### Cost Function (Quadratic Model)

Cost is calculated using a non-linear function:

```
Cost = Fixed Cost + (Variable Cost × Units Sold) + (Quadratic Factor × Units Sold²)
```

This simulates:

* Operational scaling
* Capacity constraints
* Increasing inefficiencies at high production levels

---

### Revenue Model

```
Revenue = Regional Price × Units Sold × Random Variation
```

This reflects:

* Market differences across regions
* Demand variability
* Real-world pricing behavior

---

## 📊 Exploratory Data Analysis

The analysis includes:

* Cost vs Revenue relationship
* Profit vs Units Sold
* Margin vs Revenue
* Correlation analysis
* Outlier detection

### Key Insights:

* Revenue does not guarantee profitability
* Cost is the main driver of profit variability
* Profit increases with scale but with variability
* Margins fluctuate depending on efficiency

---

## 🤖 Machine Learning

### Model Used

* Random Forest Regressor

### Objective

Predict **Profit** and identify key drivers of financial performance.

### Features Used

* Revenue
* Cost
* Units Sold
* Margin
* Product
* Region

---

### Model Evaluation

* MAE (Mean Absolute Error)
* RMSE (Root Mean Squared Error)
* R² Score

---

### Feature Importance

The model identifies key drivers of profitability:

* Revenue (primary driver)
* Cost (negative impact)
* Units Sold
* Margin

---

## 📈 Dashboards

### Power BI Dashboard

* Financial KPIs
* Profit analysis
* Cost behavior
* Regional performance

### Excel Dashboard

* Pivot analysis
* Trend visualization
* Business-friendly reporting

---

## 📌 Business Insights

* Cost management is critical for profitability
* High revenue does not always imply high margin
* Regional pricing significantly impacts performance
* Scalability introduces operational inefficiencies
* Data-driven decisions improve financial outcomes

---

## 🛠️ Tools & Technologies

* Python (Pandas, Scikit-learn)
* SQL
* Power BI
* Excel
* R (tidyverse, ggplot2)
* GitHub

---

## 📂 How to Use

1. Clone the repository
2. Run Python pipeline:

```
python python/pipeline.py
```

3. Open notebooks in `/notebooks`
4. Open dashboards in Power BI or Excel

---

## 📈 Future Improvements

* Time series forecasting
* Advanced ML models (XGBoost, LightGBM)
* Deployment as web app (Streamlit)
* Automated data pipeline

---

## 👤 Author

Juan Camilo Jaramillo Gonzalez – Data Analyst | Financial Analytics | BI Specialist
---

## ⭐ Final Note

This project demonstrates a complete workflow from **data generation to business insights**, combining financial modeling, machine learning, and visualization tools.

It is designed as a **professional portfolio project** for roles in:

* Data Analysis
* Business Intelligence
* Financial Analytics
* Machine Learning

---




