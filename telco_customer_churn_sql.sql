USE `customer-churn-project`;

DESCRIBE telco_customers;
SELECT  * FROM telco_customers LIMIT 5;

CREATE TABLE churn_features AS
SELECT 
	CustomerID AS customer_id,
    CASE WHEN Gender = 'Male' THEN 1 ELSE 0 END AS is_male,
    `Tenure Months` AS tenure_months,
    CAST(`Monthly Charges` AS FLOAT) AS monthly_charges,
    CAST(`Total Charges` AS FLOAT) AS total_charges,
    CASE WHEN `Senior Citizen` = 'Yes' THEN 1 ELSE 0 END AS is_senior_citizen,
	CASE WHEN Partner = 'Yes' THEN 1 ELSE 0 END AS has_partner,
    CASE WHEN Dependents = 'Yes' THEN 1 ELSE 0 END AS has_dependents,
    CASE WHEN `Phone Service` = 'Yes' THEN 1 ELSE 0 END AS has_phone_service,
    CASE WHEN `Multiple Lines` = 'Yes' THEN 1 ELSE 0 END AS has_multiple_lines,
    CASE WHEN `Internet Service` = 'No' THEN 0 ELSE 1 END AS has_internet,
	CASE WHEN `Online Security` = 'Yes' THEN 1 ELSE 0 END AS has_online_security,
    CASE WHEN `Online Backup` = 'Yes' THEN 1 ELSE 0 END AS has_online_backup,
	CASE WHEN `Device Protection` = 'Yes' THEN 1 ELSE 0 END AS has_device_protection,
    CASE WHEN `Tech Support` = 'Yes' THEN 1 ELSE 0 END AS has_tech_support,
    CASE WHEN `Streaming TV` = 'Yes' THEN 1 ELSE 0 END AS has_streaming_tv,
    CASE WHEN `Streaming Movies` = 'Yes' THEN 1 ELSE 0 END AS has_streaming_movies,
	CASE WHEN Contract = 'Month-to-month' THEN 1 ELSE 0 END AS month_to_month,
    CASE WHEN `Paperless Billing` ='Yes' THEN 1 ELSE 0 END AS paperless,
    CASE WHEN `Payment Method` LIKE '%automatic%' THEN 1 ELSE 0 END AS auto_pay,
    `Churn Value` AS churn_value
FROM telco_customers;


SELECT *
FROM churn_features
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/churn_features.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';




