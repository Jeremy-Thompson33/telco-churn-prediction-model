# Telco Customer Churn Prediction

This project uses the Telco Customer Churn dataset to build and evaluate a machine learning model capable of predicting whether a customer is likely to churn. The main goal is to support business decisions by identifying customers at risk and enabling targeted retention strategies.

## 📊 Project Overview

I developed a Random Forest Classifier to predict customer churn using demographic, account, and service-related features. The workflow included:

- Data cleaning and preprocessing

- Exploratory data analysis (EDA)

- Feature selection and encoding

- Model training with Random Forest

- Model evaluation using multiple performance metrics

- Hyperparameter tuning with GridSearchCV

- Precision-Recall curve optimization for alternative decision thresholds

## ⚙️ Model Performance
### Initial Model

Using default Random Forest parameters:

**ROC-AUC: 0.826**

**Precision:**

Class 0 (Not Churn): 0.83

Class 1 (Churn): 0.61

**Recall:**

Class 0: 0.88

Class 1: 0.49

Also analyzed using a confusion matrix and F1-scores.

## 🔧 Hyperparameter Tuning

I applied GridSearchCV to identify the optimal combination of Random Forest parameters (e.g., n_estimators, max_depth, min_samples_split).

### Optimized Model Results

**ROC-AUC: 0.84**

**Precision:**

Class 0: 0.91

Class 1: 0.50

**Recall:**

Class 0: 0.70

Class 1: 0.81

This improved the model’s sensitivity to the positive class (churn), which is often the most important metric in churn prediction.

## 🎯 Threshold Adjustment Using Precision-Recall Curve

To further tune the model for business needs, I plotted a Precision-Recall Curve to identify an alternative classification threshold that might better balance precision and recall.

### Threshold-Adjusted Results

**ROC-AUC: 0.764**

**Precision:**

Class 0: 0.89

Class 1: 0.55

**Recall:**

Class 0: 0.78

Class 1: 0.74

While the ROC-AUC decreased, this configuration improved the recall for churn (class 1), which may be valuable if missing potential churners is costly.

## 🧠 Key Takeaways

- The Random Forest model can effectively identify churn risk in Telco customers.

- Hyperparameter tuning improved recall for the churn class significantly.

- Threshold adjustments can further balance precision and recall depending on business goals.

- Predicting churn is inherently a trade-off between false positives and false negatives, and this project explores that trade-off in depth.

## 📁 Technologies Used

- Python

- Pandas, NumPy

- Scikit-learn

- Matplotlib, Seaborn

- Jupyter Notebook
