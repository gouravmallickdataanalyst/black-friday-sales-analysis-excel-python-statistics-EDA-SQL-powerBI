CREATE DATABASE Black_Friday_Sales_Analysis;
USE Black_Friday_Sales_Analysis;
CREATE TABLE Black_Friday_Data 
			(
			User_ID INT NOT NULL,
			Product_ID VARCHAR(20) NOT NULL,
			Gender VARCHAR(10),
			Age VARCHAR(20),
			Occupation INT,
			City_Category VARCHAR(5),
			Stay_In_Current_City_Years VARCHAR(10),
			Marital_Status INT,
			Product_Category_1 INT,
			Product_Category_2 INT,
			Product_Category_3 INT,  
			Purchase INT NOT NULL,
            
            PRIMARY KEY (User_ID, Product_ID),

			CHECK (Purchase>0)
			);
DESCRIBE Black_Friday_Data;
SHOW CREATE TABLE black_friday_data;
SHOW TABLES;
SELECT COUNT(*) AS total_rows
FROM black_friday_data;
