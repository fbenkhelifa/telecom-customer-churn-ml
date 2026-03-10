# Telecom Customer Churn Prediction using Machine Learning

## Overview
Customer churn prediction is a critical task for telecom operators because acquiring new customers is significantly more expensive than retaining existing ones.  
This project builds a machine learning pipeline to predict whether a customer will churn using the IBM Telco Customer Churn dataset.

The project demonstrates a full ML workflow including:
- Data preprocessing
- Feature engineering
- Model training
- Hyperparameter tuning
- Model evaluation
- Error analysis

The goal is to identify customers at risk of leaving so that telecom providers can take preventive actions.

---

## Dataset

**IBM Telco Customer Churn Dataset**

- Samples: **7043 customers**
- Features: **21 variables**
- Target: **Churn (Yes / No)**

Feature types:

Numerical
- SeniorCitizen
- tenure
- MonthlyCharges
- TotalCharges

Categorical
- gender
- Partner
- Dependents
- PhoneService
- MultipleLines
- InternetService
- OnlineSecurity
- OnlineBackup
- DeviceProtection
- TechSupport
- StreamingTV
- StreamingMovies
- Contract
- PaperlessBilling
- PaymentMethod

Source:  
https://www.kaggle.com/blastchar/telco-customer-churn

---

## Machine Learning Pipeline

The preprocessing pipeline prevents data leakage using a **ColumnTransformer**.

Steps:

1. Missing value imputation  
   - Median for numerical features  
   - Mode for categorical features

2. Encoding  
   - One-hot encoding for categorical variables

3. Feature scaling  
   - StandardScaler for numerical features

---

## Models

Two supervised learning models were implemented.

### Logistic Regression
Baseline model with L1 regularization for feature selection.

### XGBoost
Gradient boosting trees capturing nonlinear feature interactions.

---

## Evaluation

Model evaluation uses **Stratified 5-fold cross validation**.

Metrics:
- Accuracy
- Recall (important for churn detection)

Recall is prioritized because failing to detect a future churner is more costly than a false alarm.

---

## Results

| Model | Accuracy | Recall |
|------|------|------|
| Logistic Regression (baseline) | 80.5% | 55.3% |
| Logistic Regression (tuned) | 69.2% | **86.8%** |
| XGBoost (baseline) | 76.0% | 71.3% |
| XGBoost (tuned) | 75.3% | 80.3% |

The tuned logistic regression achieved the **highest recall**, making it the best model for churn detection.

---

## Error Analysis

The main failure cases occurred for customers with:
- medium tenure
- moderate monthly charges
- yearly contracts

These customers present mixed patterns between churn and non-churn groups.

---

## Key Insights

Customers most likely to churn tend to have:

- month-to-month contracts
- higher monthly charges
- short tenure

Telecom companies can use these insights to:
- encourage long-term contracts
- provide targeted retention offers
- monitor high-risk segments.

---

## Technologies

Python  
Scikit-learn  
XGBoost  
Pandas  
NumPy  
Matplotlib  
Seaborn  

---

## Author

Farouk Benkhelifa  
Telecommunications Engineering Student  
ENSTTIC – Oran
