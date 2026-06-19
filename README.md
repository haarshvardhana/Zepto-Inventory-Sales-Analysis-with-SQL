# 🛒 Zepto Q-commerce SQL Analysis

**Project Overview**  
This project simulates a real-world data analyst workflow using Zepto’s Q-commerce inventory dataset. The goal is to explore, clean, and analyze inventory data with SQL and generate actionable business insights.  

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


mermaid
graph TD
    A[Restaurant View <br><b>100,000 Users</b>] -->|32% Conversion| B[Group Order Click <br><b>32,000 Users</b>]
    B -->|48% Conversion| C[Invite Friend <br><b>15,360 Users</b>]
    C -->|18% Conversion| D[Checkout <br><b>2,764 Users</b>]
    D -->|82% Conversion| E[Order Complete <br><b>2,266 Users</b>]
    style A fill:#EBF5FB,stroke:#2E86C1,stroke-width:2px
    style E fill:#EAFAF1,stroke:#27AE60,stroke-width:3px
    style D fill:#FDEDEC,stroke:#CB4335,stroke-width:2px
