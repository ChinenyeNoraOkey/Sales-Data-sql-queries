-- My Working Script

SELECT * FROM consolidated_sales_data;
USE pluralcode;
-- Q1 
SELECT SUM(quantity) AS Total_quantity_sold
FROM consolidated_sales_data
WHERE sales_person = 'Emeka';

-- Q2 
SELECT SUM(total_price) AS Total_sales_march
FROM consolidated_sales_data
WHERE sales_person = 'Ngozi' AND MONTHNAME(sale_date) = 'March';

-- Q3
SELECT sales_person, SUM(quantity) AS Total_quantity
FROM consolidated_sales_data
WHERE sales_person IN ('Emeka','Ngozi','Tolu')
GROUP BY Sales_person;

-- Q4
SELECT COUNT(DISTINCT customer_name) AS customers_starting_with_A
FROM consolidated_sales_data
WHERE customer_name LIKE 'A%';

-- Q5
SELECT customer_name, SUM(total_price) AS Total_sales
FROM consolidated_sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;

-- Q6
SELECT category, SUM(quantity) AS total_quantity
FROM consolidated_sales_data
GROUP BY category;

-- Q7
SELECT product_name, SUM(total_price) AS Total_sales
FROM consolidated_sales_data
GROUP BY product_name
HAVING total_sales > 300000000;

-- Q8
 SELECT *, 
CASE 
WHEN total_price > 2500000 THEN 'High'
WHEN total_price BETWEEN 1800000 AND 2500000 THEN 'Medium'
ELSE 'Low'
END AS sales_class
FROM consolidated_sales_data;

-- Q9
SELECT MONTHNAME(sale_date) AS month, SUM(quantity) AS Total_quantity
FROM consolidated_sales_data
GROUP BY MONTHNAME(sale_date)
ORDER BY total_quantity DESC
LIMIT 1;

-- Q10
SELECT customer_segment, COUNT(DISTINCT customer_name) AS Customer_count
FROM consolidated_sales_data
GROUP BY customer_segment
ORDER BY customer_count DESC
LIMIT 1;

-- Q11
SELECT COUNT(*) AS Customer_count
FROM (SELECT customer_name, AVG(total_price) AS Avg_sales
FROM consolidated_sales_data
GROUP BY customer_name
HAVING avg_sales > 1800000) 
AS Avg_customers;

-- Q12
SELECT product_name, SUM(quantity) AS Total_quantity
FROM consolidated_sales_data
WHERE sale_date > '2024-06-01'
GROUP BY product_name
ORDER BY total_quantity DESC
LIMIT 3;

-- Q13
SELECT COUNT(*) AS Dell_orders
FROM consolidated_sales_data
WHERE product_name LIKE '%Dell%';

-- Q14
SELECT COUNT(DISTINCT customer_name) AS Feb_customers
FROM consolidated_sales_data
WHERE MONTH(sale_date) = 2 AND YEAR(sale_date) = 2024;

-- Q15
SELECT product_name, SUM(quantity) AS Total_qty,
CASE
WHEN SUM(quantity) > 650 THEN 'Best Seller'
WHEN SUM(quantity) BETWEEN 550 AND 650 THEN 'Average Seller'
ELSE 'Low Seller'
END AS Popularity
FROM consolidated_sales_data
GROUP BY product_name;