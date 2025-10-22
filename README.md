# 🛒 Zepto E-commerce SQL Analysis

**Project Overview**  
This project simulates a real-world data analyst workflow using Zepto’s e-commerce inventory dataset. The goal is to explore, clean, and analyze inventory data with SQL and generate actionable business insights.  

**Purpose**  
- Build a strong portfolio project for data analyst roles  
- Learn SQL hands-on with real e-commerce data  
- Prepare for interviews in retail, e-commerce, or product analytics  

**Dataset Highlights**  
- Source: Kaggle, scraped from Zepto’s official product listings  
- Key columns:  
  - `SKU_ID`: Unique identifier for each product  
  - `Name`: Product name  
  - `Category`: Product category (Fruits, Snacks, Beverages, etc.)  
  - `MRP`: Maximum Retail Price in ₹  
  - `Discount_Percent`: Discount applied on MRP  
  - `Discounted_Sp`: Price after discount in ₹  
  - `Availability`: Units available  
  - `weightINGms`: Product weight in grams  
  - `OutOfStock`: Stock availability (True/False)  
  - `Quantity`: Units per package  

**Workflow**  
1. **Database & Table Creation** – Created SQL table with proper data types  
2. **Data Import** – Imported CSV into PostgreSQL using pgAdmin  
3. **Data Exploration** – Checked dataset structure, null values, categories, stock counts, and duplicates  
4. **Data Cleaning** – Removed invalid rows and converted prices from paise to rupees  
5. **Analysis & Insights** –  
   - Top products by discount percentage  
   - High-MRP products out of stock  
   - Estimated revenue per category  
   - Price-per-gram analysis for value products  
   - Grouped products by weight  

**Technologies Used**  
- SQL (PostgreSQL)  
- pgAdmin  
- CSV data handling  

**Key Learnings**  
- Handling real-world e-commerce data  
- Writing business-focused SQL queries  
- Extracting insights to support business decisions
