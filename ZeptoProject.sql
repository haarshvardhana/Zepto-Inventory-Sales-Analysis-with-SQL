DROP TABLE IF EXISTS Zepto;
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

--data exploration

--count of rows
SELECT COUNT(*) FROM Zepto;

--sample data
SELECT * FROM Zepto
LIMIT 10;

--null values
SELECT * FROM Zepto
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

--different product categories
SELECT DISTINCT Category
FROM Zepto
ORDER BY Category;

--products In Stock and Out Of Stock
SELECT OutOfStock, COUNT(SKU_ID)
FROM Zepto
GROUP BY OutOfStock;

--Product names present multiple times
SELECT Name, Count(SKU_ID) AS "Number of SKUs"
FROM Zepto
GROUP BY Name
HAVING COUNT(SKU_ID) > 1
ORDER BY COUNT(SKU_ID) DESC;


