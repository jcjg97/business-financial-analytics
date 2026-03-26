/*
Data Load Script
----------------
The financial_data.csv file is stored in the GitHub repository under:
data/raw/financial_data.csv

For security reasons, MySQL does not allow direct loading from remote URLs.
The data is imported locally using MySQL Workbench (Data Import Wizard).

Steps:
1. Download financial_data.csv from GitHub
2. Open MySQL Workbench
3. Go to Server → Data Import
4. Select "Import from Self-Contained File"
5. Choose the CSV file
6. Select schema: business_financial_analytics
7. Import into table: financial_data
