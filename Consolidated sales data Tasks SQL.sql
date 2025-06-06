/* TASKS:
Please read the questions carefully and put your answers on the answers sections, when required to export your file, kindly do so and save the exported report as a csv file 
Import the sales_data into your workbench, and use the data to answer the questions below */


-- Q1. What is the total quantity sold by Emeka?
-- Answer  '1131'

-- Q2. What is the total sales amount for products sold by Ngozi in the month of March
-- Answer  '49780000'

-- Q3. What is the total sales quantity for Emeka,Ngozi and Tolu
	-- sales_person	Total_quantity
	-- Emeka	1131
	-- Ngozi	906
	--  Tolu	960

-- Q4. How many customers' names start with the letter "A". 
-- Answer # customers_starting_with_A  '166'

-- Q5. Which 5 customers made the highest total sales? Note: Export the list as a csv or copy it into the answer section below

-- Q6. What is the total quantity sold per category?  Note: Export the list as a csv or copy it into the answer section below

-- Q7. Which product(s) have a total sales amount greater than 300,000,000? Note: Export the list as a csv or copy it into the answer section below

-- Q8. Create a report showing each sale, and add a column to classify sales amount in this order; 
	-- total_price greater 2500000 will be 'High', total_price BETWEEN 1800000 AND 2500000 will be 'Medium' other sales amount will be classified as 'low'. Note: Export the list as a csv
-- Answer : 

-- Q9. Which month recorded the highest sales quantity? Hint use the monthname(sale_date) to get the month name
-- Answer : month	Total_quantity
--  December	551

-- Q10. Which customer segment has the highest number of customers and what is the number of customers in that segment?
-- Answer : customer_segment  Customer_count
--   Individual, 1034

-- Q11. How many customers have average sales amount that is above 1800000
-- Answer : Customer_count '705'

-- Q12. List the top 3 products by total quantity sold after June 1st, 2024. Note: Export the list as a csv or copy it into the answer section below
-- Answer : 

-- Q13. How many orders were for Dell products, please note that this is not asking for the quantity of Dell products
-- Answer : Dell_orders '205'

-- Q14. How many customers made purchases in February 2024?
-- Answer : Feb_customers '0'

-- Q15. Classify each product's popularity based on total quantity sold. The classifications are
	-- total_qty is greater than 650 as 'Best Seller', total_qty BETWEEN 550 AND 650 as 'Average Seller', the rest will be classified as 'Low Seller'. Note: Export the list as a csv or copy it into the answer section below
-- Answer : 