# Data Outputs for Power BI Sales Dashboard

## Overview
This folder contains **cleaned CSV and Excel files** used to build an interactive **Power BI Internet Sales dashboard** based on the **Microsoft AdventureWorksDW 2025 dataset**.

The data is structured as a **star schema**, enabling fast refreshes, clear relationships, and intuitive filtering by **time, customer, product, and budget**.

---

## Data Model
- **Fact Table:** Internet Sales
- **Dimension Tables:** Calendar, Customer, Product
- **External Source:** Sales Budget (Excel)

---

## Files & Sample Data

### 1. `DimCalendar.csv`
Date dimension for time-based analysis (2024–2026).

| DateKey  | Date       | Day       | WeekNum | Month   | MonthShort | MonthNo | Quarter | Year |
|--------|------------|-----------|---------|---------|------------|---------|---------|------|
| 20240101 | 2024-01-01 | Monday    | 1 | January | Jan | 1 | 1 | 2024 |
| 20240102 | 2024-01-02 | Tuesday   | 1 | January | Jan | 1 | 1 | 2024 |
| 20240103 | 2024-01-03 | Wednesday | 1 | January | Jan | 1 | 1 | 2024 |
| 20240104 | 2024-01-04 | Thursday  | 1 | January | Jan | 1 | 1 | 2024 |
| 20240105 | 2024-01-05 | Friday    | 1 | January | Jan | 1 | 1 | 2024 |

**Used for:** Month/year slicers, trends, seasonality analysis.

---

### 2. `DimCustomer.csv`
Customer dimension with simplified, business-friendly fields.

| CustomerKey | FirstName | LastName | FullName | Gender | DateFirstPurchase | CustomerCity |
|------------|-----------|----------|----------|--------|-------------------|--------------|
| 11000 | Jon | Yang | Jon Yang | Male | 2023-01-19 | Rockhampton |
| 11001 | Eugene | Huang | Eugene Huang | Male | 2023-01-15 | Seaford |
| 11002 | Ruben | Torres | Ruben Torres | Male | 2023-01-07 | Hobart |
| 11003 | Christy | Zhu | Christy Zhu | Female | 2022-12-29 | North Ryde |
| 11004 | Elizabeth | Johnson | Elizabeth Johnson | Female | 2023-01-23 | Wollongong |

**Used for:** Customer search, personalised filtering, top-customer analysis.

---

### 3. `DimProduct.csv`
Product dimension enriched with descriptive attributes.

| Product Key | Product Code | Product Name | Product Colour | Product Size | Product Line | Product Date | Product Status |
|------------|--------------|--------------|----------------|--------------|--------------|--------------|----------------|
| 1 | AR-5381 | Adjustable Race | NA | NULL | NULL | 2015-07-01 | Current |
| 2 | BA-8327 | Bearing Ball | NA | NULL | NULL | 2015-07-01 | Current |
| 3 | BE-2349 | BB Ball Bearing | NA | NULL | NULL | 2015-07-01 | Current |
| 4 | BE-2908 | Headset Ball Bearings | NA | NULL | NULL | 2015-07-01 | Current |
| 5 | BL-2036 | Blade | NA | NULL | NULL | 2015-07-01 | Current |

**Used for:** Product selection, category performance, best-seller analysis.

---

### 4. `FactInternetSales.csv`
Core fact table containing transactional sales data.

| ProductKey | OrderDateKey | DueDateKey | ShipDateKey | CustomerKey | SalesOrderNumber | SalesAmount |
|-----------|--------------|------------|-------------|-------------|------------------|-------------|
| 381 | 20240101 | 20240113 | 20240108 | 16942 | SO46700 | 1000.44 |
| 375 | 20240101 | 20240113 | 20240108 | 15114 | SO46701 | 2181.56 |
| 369 | 20240101 | 20240113 | 20240108 | 15116 | SO46702 | 2443.35 |
| 337 | 20240101 | 20240113 | 20240108 | 20576 | SO46703 | 782.99 |
| 370 | 20240101 | 20240113 | 20240108 | 13059 |  SO46704 | 2443.35 |

**Used for:** Revenue KPIs, trends, customer and product contributions.

---

### 5. `SalesBudget.xlsx`
Daily sales budget data used for target comparisons.

| Date | Budget |
|-----|--------|
| 1/1/25 | 800,000 |
| 1/2/25 | 800,000 |
| 1/3/25 | 1,000,000 |
| 1/4/25 | 1,000,000 |
| 1/5/25 | 1,100,000 |

**Used for:** Actual vs budget visuals in Power BI.

---

## Usage in Power BI
- Files are loaded into **Power BI Desktop**
- Relationships created via surrogate keys (`DateKey`, `CustomerKey`, `ProductKey`)
- Enables interactive filtering by **customer, product, date, and budget performance**

---

