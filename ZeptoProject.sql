drop table if exists Zepto;

CREATE TABLE Zepto(
SKU_ID SERIAL PRIMARY KEY,
Category VARCHAR(120),
Name VARCHAR(150) NOT NULL,
MRP NUMERIC(8,2),
Discount_Percentage NUMERIC(5,2),
Availability INTEGER,
Discounted_SP NUMERIC(8,2),
WeightINGms INTEGER,
OutOfStock BOOLEAN,
Quantity INTEGER
);


--Data Exploration--

--Count of rows
select count(*) from zepto;

--Sample data
SELECT * FROM zepto
LIMIT 10;

--Null values
SELECT * FROM zepto
WHERE Name IS NULL
OR
Category IS NULL
OR
MRP IS NULL
OR
Discount_Percentage IS NULL
OR
Discounted_SP IS NULL
OR
WeightINGms IS NULL
OR
Availability IS NULL
OR
OutOfStock IS NULL
OR
Quantity IS NULL;

--Different product categories
SELECT DISTINCT Category
FROM zepto
ORDER BY Category;

--Products in stock vs out of stock
SELECT OutOfStock, COUNT(SKU_ID)
FROM zepto
GROUP BY OutOfStock;

--Product names present multiple times
SELECT Name, COUNT(SKU_ID) AS "Number of SKUs"
FROM zepto
GROUP BY Name
HAVING count(SKU_ID) > 1
ORDER BY count(SKU_ID) DESC;

--Data cleaning--

--Products with price = 0
SELECT * FROM zepto
WHERE MRP = 0 OR Discounted_SP = 0;

DELETE FROM zepto
WHERE MRP = 0;

--Convert paise to rupees
UPDATE zepto
SET MRP = MRP / 100.0,
Discounted_SP = Discounted_SP / 100.0;

SELECT MRP, Discounted_SP FROM zepto;

--Data Analysis--

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT Name, MRP, Discount_Percentage
FROM zepto
ORDER BY Discount_Percentage DESC
LIMIT 10;

--Q2.What are the Products with High MRP but Out of Stock
SELECT DISTINCT Name, MRP
FROM zepto
WHERE OutOfStock = TRUE AND MRP > 300
ORDER BY MRP DESC;

--Q3.Calculate Estimated Revenue for each category
SELECT Category,
SUM(Discounted_SP * Availability) AS Total_Revenue
FROM zepto
GROUP BY Category
ORDER BY Total_Revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT Name, MRP, Discount_Percentage
FROM zepto
WHERE MRP > 500 AND Discount_Percentage < 10
ORDER BY MRP DESC, Discount_Percentage DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT Category,
ROUND(AVG(Discount_Percentage),2) AS Avg_Discount
FROM zepto
GROUP BY Category
ORDER BY Avg_Discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT Name, WeightINGms, Discounted_SP,
ROUND(Discounted_SP/WeightINGms,2) AS Price_Per_Gram
FROM zepto
WHERE WeightINGms >= 100
ORDER BY Price_Per_Gram;

--Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT Name, WeightINGms,
CASE WHEN WeightINGms < 1000 THEN 'Low'
    WHEN WeightINGms < 5000 THEN 'Medium'
    ELSE 'Bulk'
    END AS Weight_Category
FROM zepto;

--Q8.What is the Total Inventory Weight Per Category 
SELECT Category,
SUM(WeightINGms * Availability) AS Total_Weight
FROM zepto
GROUP BY Category
ORDER BY Total_Weight;
