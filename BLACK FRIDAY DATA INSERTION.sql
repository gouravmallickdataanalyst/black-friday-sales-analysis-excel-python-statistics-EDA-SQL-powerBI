SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile=1;
SHOW VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE '"D:\DATA ANALYTICS\CAPSTONE PROJECT\4414673-Dataset_-_Black_Friday_Sales_Analysis\EXCEL VALIDATION\Data_Quality_Log.csv"'
INTO TABLE black_friday_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
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
);
