# Repeat customer analysis--->

SELECT 
    User_ID,
    Product_ID,
    COUNT(*) AS transaction_count
FROM black_friday_data
GROUP BY User_ID, Product_ID
HAVING COUNT(*) > 1;

SHOW CREATE TABLE black_friday_data;

# creating dimensions like views--->
# view 1--customer_info--->

CREATE VIEW customer_info AS
SELECT DISTINCT
    User_ID,
    Gender,
    Age,
    Occupation,
    City_Category,
    Stay_In_Current_City_Years,
    Marital_Status
FROM black_friday_data;
SELECT *
FROM customer_info
LIMIT 10;

# view 2--product_info--->

CREATE VIEW product_info AS
SELECT DISTINCT
    Product_ID,
    Product_Category_1,
    Product_Category_2,
    Product_Category_3
FROM black_friday_data;
SELECT *
FROM product_info
LIMIT 10;

# view 3--transaction_data--->

CREATE VIEW transaction_data AS
SELECT
    User_ID,
    Product_ID,
    Purchase
FROM black_friday_data;
SELECT *
FROM transaction_data
LIMIT 10;

# checking for exact duplicate rows--->

SELECT
    User_ID,
    Product_ID,
    Gender,
    Age,
    Occupation,
    City_Category,
    Stay_In_Current_City_Years,
    Marital_Status,
    Product_Category_1,
    Product_Category_2,
    Product_Category_3,
    Purchase,
    COUNT(*) AS duplicate_count
FROM black_friday_data
GROUP BY
    User_ID,
    Product_ID,
    Gender,
    Age,
    Occupation,
    City_Category,
    Stay_In_Current_City_Years,
    Marital_Status,
    Product_Category_1,
    Product_Category_2,
    Product_Category_3,
    Purchase
HAVING COUNT(*) > 1
LIMIT 20;

# checking randome rows--->

SELECT *
FROM black_friday_data
ORDER BY RAND()
LIMIT 10;

SHOW CREATE TABLE black_friday_data;

SELECT
    COUNT(*) AS total_rows,
    SUM(Product_Category_2 = 0) AS category_2_zero,
    SUM(Product_Category_2 IS NULL) AS category_2_null,
    SUM(Product_Category_3 = 0) AS category_3_zero,
    SUM(Product_Category_3 IS NULL) AS category_3_null
FROM black_friday_data;

SET SQL_SAFE_UPDATES = 0;

UPDATE black_friday_data
SET Product_Category_2 = NULL
WHERE Product_Category_2 = 0;

UPDATE black_friday_data
SET Product_Category_3 = NULL
WHERE Product_Category_3 = 0;

SELECT *
FROM black_friday_data;

# Total transactions--->

SELECT COUNT(*) AS Total_Transaction
FROM black_friday_data;

# Distinct Customers--->

SELECT COUNT(DISTINCT User_ID) AS Distinct_Customer
FROM black_friday_data;

# Distinct Products--->

SELECT COUNT(DISTINCT Product_ID) AS Distinct_Customer
FROM black_friday_data;

# Total rows present--->

SELECT COUNT(*) AS total_rows
FROM black_friday_data;

SELECT *
FROM black_friday_data;

DESCRIBE black_friday_data;