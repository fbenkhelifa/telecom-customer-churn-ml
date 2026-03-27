# Telecom Customer Churn Prediction (ML)

## Overview

This project predicts whether a telecom customer is likely to churn using supervised machine learning on the IBM Telco Customer Churn dataset.

The notebook covers:

- data cleaning and preprocessing
- feature encoding and scaling
- model training and tuning
- evaluation and error analysis

## Dataset

- **Source:** IBM Telco Customer Churn (Kaggle)
- **Rows:** 7043 customers
- **Features:** 21 input variables
- **Target:** `Churn` (`Yes` / `No`)

## Methodology

### Preprocessing

- numerical imputation (median)
- categorical imputation (most frequent)
- one-hot encoding for categorical features
- standard scaling for numeric features

### Models

- Logistic Regression
- XGBoost

### Validation

- Stratified 5-fold cross-validation
- Focused on **recall** (important for churn-risk detection)

## Results

| Model | Accuracy | Recall |
|------|------|------|
| Logistic Regression (baseline) | 80.5% | 55.3% |
| Logistic Regression (tuned) | 69.2% | **86.8%** |
| XGBoost (baseline) | 76.0% | 71.3% |
| XGBoost (tuned) | 75.3% | 80.3% |

The tuned Logistic Regression model achieved the highest recall and is the best fit when minimizing missed churners is the top priority.

## Repository Structure

- `telecom-customer-churn-ml.ipynb` — full analysis and modeling notebook
- `telecom-customer-churn-ml.pdf` — exported report/notebook

## How to Run

1. Create and activate a Python environment.
2. Install required packages listed in the notebook imports.
3. Open and run `telecom-customer-churn-ml.ipynb` in Jupyter or VS Code.

## Tech Stack

- Python
- pandas, numpy
- scikit-learn
- xgboost
- matplotlib, seaborn

## License

MIT License (see `LICENSE`).
