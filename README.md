# Telecom Customer Churn Prediction (ML)

![Python](https://img.shields.io/badge/python-3.10%2B-3776AB?style=flat&logo=python&logoColor=white)
![Notebook](https://img.shields.io/badge/notebook-Jupyter-F37626?style=flat&logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-supporting%20portfolio-1f6feb)

## What is this

This repository predicts telecom customer churn using supervised machine learning on the IBM Telco dataset. It demonstrates a complete notebook workflow from preprocessing and feature engineering to model tuning and evaluation.

## Why it exists

Churn prediction is a high-impact telecom use case where recall-focused modeling helps prioritize retention actions and reduce customer loss.

## Approach

1. Data cleaning and missing-value handling
2. Feature encoding/scaling
3. Baseline and tuned models (Logistic Regression, XGBoost)
4. Stratified cross-validation and metric-driven comparison

## Dataset

- Source: IBM Telco Customer Churn (Kaggle)
- Rows: 7043
- Features: 21
- Target: `Churn` (`Yes`/`No`)

## Installation

```bash
git clone https://github.com/fbenkhelifa/telecom-customer-churn-ml.git
cd telecom-customer-churn-ml
python -m venv .venv
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
pip install pandas numpy scikit-learn xgboost matplotlib seaborn jupyter
```

## Usage

```bash
jupyter notebook telecom-customer-churn-ml.ipynb
```

Run cells top-to-bottom.

### Key observed results (from project report)

- Logistic Regression (tuned): **Recall 86.8%**
- XGBoost (tuned): **Recall 80.3%**

## Project structure

```text
telecom-customer-churn-ml/
├── telecom-customer-churn-ml.ipynb  # Full notebook workflow
├── telecom-customer-churn-ml.pdf    # Exported report/notebook
├── README.md
├── .gitignore
└── LICENSE
```

## Limitations

- Notebook-first format (limited modularization/reusability)
- No packaged training/inference CLI
- No automated tests or CI pipeline

## Roadmap

1. Refactor into modular Python package (`src/`, `notebooks/`, `data/`).
2. Add reproducible `requirements.txt` + environment lock.
3. Add threshold tuning and cost-sensitive evaluation.
4. Add baseline model serving API for churn scoring.

## License

Licensed under MIT. See [`LICENSE`](./LICENSE).
