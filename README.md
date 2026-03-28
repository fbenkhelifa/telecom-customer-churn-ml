# Telecom Customer Churn Prediction (ML)

![Python](https://img.shields.io/badge/python-3.10%2B-3776AB?style=flat&logo=python&logoColor=white)
![Notebook](https://img.shields.io/badge/notebook-Jupyter-F37626?style=flat&logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)
![Status](https://img.shields.io/badge/status-supporting%20portfolio-1f6feb)

## What is this

This repository predicts telecom customer churn using supervised machine learning on the IBM Telco dataset.

## Why it exists

Churn prediction is a high-impact telecom use case where recall-focused modeling helps prioritize retention actions and reduce customer loss.

## Architecture / Stack

- Python, pandas, numpy
- scikit-learn, XGBoost
- Jupyter Notebook workflow

## Installation

```bash
git clone https://github.com/fbenkhelifa/telecom-customer-churn-ml.git
cd telecom-customer-churn-ml
python -m venv .venv
# Windows PowerShell
.\.venv\Scripts\Activate.ps1
pip install pandas numpy scikit-learn xgboost matplotlib seaborn jupyter
# bootstrap dataset into data/raw/telco/
powershell -ExecutionPolicy Bypass -File scripts/download_data.ps1
```

## Usage

```bash
jupyter notebook notebooks/churn-prediction.ipynb
```

Run cells top-to-bottom.

### Dataset

- Source: IBM Telco Customer Churn
- Rows: 7043
- Features: 21
- Target: `Churn` (`Yes`/`No`)
- Local path used by notebook: `../data/raw/telco/WA_Fn-UseC_-Telco-Customer-Churn.csv`

### Key observed results

- Logistic Regression (tuned): **Recall 86.8%**
- XGBoost (tuned): **Recall 80.3%**

## Project structure

```text
telecom-customer-churn-ml/
├── data/
│   ├── README.md
│   ├── raw/
│   │   └── telco/
│   │       └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   └── processed/
├── notebooks/
│   └── churn-prediction.ipynb
├── reports/
│   └── telecom-customer-churn-ml.pdf
├── src/
│   └── .gitkeep
├── scripts/
│   └── download_data.ps1
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
2. Add reproducible dependency lock file.
3. Add threshold optimization and cost-sensitive evaluation.
4. Add baseline model serving API for churn scoring.

## License

Licensed under MIT. See [`LICENSE`](./LICENSE).
