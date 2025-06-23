Create Table reatail_sales(transactions_id int PRIMARY KEY,
sale_date date,
sale_time TIME,
customer_id	INT,
gender VARCHAR(15),
age INT,
category VARCHAR(15),	
quantiy INT,
price_per_unit FLOAT,
cogs FLOAT,	
total_sale FLOAT
);
SELECT*FROM reatail_sales
LIMIT 10;
SELECT COUNT(*)FROM reatail_sales;
SELECT*FROM reatail_sales
WHERE transactions_id is NULL
SELECT*FROM reatail_sales
WHERE sale_date is NULL
SELECT*FROM reatail_sales
WHERE age is NULL
SELECT*FROM reatail_sales
WHERE
transactions_id is NULL
or
sale_date is NULL
OR
sale_time is NULL
OR
customer_id is NULL
or
gender is NULL
or
age is NULL
or
category is NULL
or
quantiy is NULL
or
price_per_unit is NULL 
or
cogs is NULL
or
total_sale is NULL
DELETE FROM reatail_sales
WHERE
transactions_id is NULL
or
sale_date is NULL
OR
sale_time is NULL
OR
customer_id is NULL
or
gender is NULL
or
age is NULL
or
category is NULL
or
quantiy is NULL
or
price_per_unit is NULL 
or
cogs is NULL
or
total_sale is NULL

--DATA EXPLORATION
--HOW MANY SALES WE HAVE
SELECT COUNT(*) AS total_sale FROM reatail_sales
--NO OF CUSTOMERS
SELECT COUNT(DISTINCT customer_id ) AS total_sale FROM reatail_sales
--no of category
SELECT DISTINCT category FROM reatail_sales
--data analysis
--q1. write a sql query to retrive all columns for sales made on "2022-11-05"
SELECT *
FROM  reatail_sales
WHERE sale_date ='2022-11-05';

SELECT
category,
SUM(quantiy)
FROM reatail_sales

SELECT *
FROM reatail_sales
WHERE category='Clothing'
AND TO_CHAR(sale_date,'YYYY-MM')='2022-11'
AND quantiy>=4


SELECT 
   category,
   SUM(total_sale) as net_sal
   FROM reatail_sales
   GROUP BY 1


SELECT *FROM reatail_sales
WHERE total_sale>1000


SELECT category,gender,count(*) total_trans
from reatail_sales
group by category,gender


SELECT  
    EXTRACT(YEAR FROM sale_date) as YEAR,
	EXTRACT(MONTH FROM sale_date)as MONTH,
	AVG (total_sale) AS AVG_SALE,
	FROM reatail_sales
	GROUP BY 1,2
	ORDER BY 1,3 DESC