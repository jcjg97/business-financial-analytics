
CREATE SCHEMA `business_financial_analytics` ;
USE business_financial_analytics;
DROP TABLE IF EXISTS financial_data;

CREATE TABLE financial_data (
    date DATE,
    region VARCHAR(50),
    product VARCHAR(50),
    revenue DECIMAL(12,2),
    cost DECIMAL(12,2),
    units_sold INT
);
