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
*/

-- Optional: Enable local infile if the environment allows it
SET GLOBAL local_infile = 1;

/*
Optional command (only if LOCAL INFILE is enabled in the environment):

LOAD DATA LOCAL INFILE '/local/path/financial_data.csv'
INTO TABLE financial_data
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(date, region, product, revenue, cost, units_sold);
*/
