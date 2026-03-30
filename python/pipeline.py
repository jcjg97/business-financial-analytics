"""
Financial Data Processing Pipeline

This script performs:
1. Data loading
2. Data cleaning
3. Feature engineering
4. Model training (Linear Regression)

Author: Juan Camilo Jaramillo G
"""

import pandas as pd
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import r2_score, mean_absolute_error


# -----------------------------
#  Load Data
# -----------------------------
def load_data(path):
    """
    Load dataset from CSV file
    """
    df = pd.read_csv(path, sep=',')
    return df

# -----------------------------
# Data Cleaning
# -----------------------------
def clean_data(df):
    """
    Clean dataset:
    - Remove duplicates
    - Convert date column
    """
    df = df.drop_duplicates()

    if "date" in df.columns:
        df["date"] = pd.to_datetime(df["date"], errors="coerce")

    return df


# -----------------------------
# Feature Engineering
# -----------------------------
def create_features(df):
    """
    Create new financial features
    """
    df["profit"] = df["revenue"] - df["cost"]
    df["margin"] = df["profit"] / df["revenue"]
    df["revenue_per_unit"] = df["revenue"] / df["units_sold"]

    if "date" in df.columns:
        df["year"] = df["date"].dt.year
        df["month"] = df["date"].dt.month

    return df


# -----------------------------
# Train Model
# -----------------------------
def train_model(df):
    """
    Train Linear Regression model
    """
    X = df.drop(columns=["profit"])
    y = df["profit"]

    # Keep only numeric columns
    X = X.select_dtypes(include=["number"])

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.2, random_state=42
    )

    model = LinearRegression()
    model.fit(X_train, y_train)

    y_pred = model.predict(X_test)

    print("Model Performance:")
    print("R2:", r2_score(y_test, y_pred))
    print("MAE:", mean_absolute_error(y_test, y_pred))

    return model


# -----------------------------
# Main Pipeline
# -----------------------------
def run_pipeline():
    """
    Execute full pipeline
    """
    path = "../data/raw/financial_data.csv"

    df = load_data(path)
    df = clean_data(df)
    df = create_features(df)

    # Save processed data
    df.to_csv("../data/processed/financial_data_processed.csv", index=False)

    model = train_model(df)

    return model


# -----------------------------
# Execute
# -----------------------------
if __name__ == "__main__":
    run_pipeline()
