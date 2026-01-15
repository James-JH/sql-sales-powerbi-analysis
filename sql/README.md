# SQL Data Preparation for Power BI

## Overview
This folder contains **SQL queries used to clean, transform, and model data** from the **Microsoft AdventureWorksDW 2025** database for use in **Power BI dashboards**.

The queries focus on producing **analysis-ready dimension and fact tables** by removing redundant columns, renaming fields for clarity, and applying business-relevant filters.

---

## Queries Included

### 1. Date Dimension (DimDate)

<img width="478" height="386" alt="image" src="https://github.com/user-attachments/assets/db182c44-5d32-4337-b7f7-afd8963c26ac" />

- Cleaned and simplified the date table
- Renamed columns for readability
- Added short month names for reporting
- Filtered data to **2024–2026** only

**Purpose:** Enable time-based filtering and trend analysis in Power BI.

---

### 2. Customer Dimension (DimCustomer)

<img width="764" height="560" alt="image" src="https://github.com/user-attachments/assets/e8e48a61-d458-4442-a4c0-0dc2cb745b36" />

- Removed unused demographic fields
- Created a `FullName` field for reporting
- Normalised gender values
- Joined geography data to add customer city
- Ordered by customer key for consistency

**Purpose:** Support customer-level analysis and personalised filtering.

---

### 3. Product Dimension (DimProduct)

<img width="654" height="676" alt="image" src="https://github.com/user-attachments/assets/b93b4f7a-60cc-41d4-9b68-28c890692742" />

- Renamed columns to business-friendly names
- Joined product category and subcategory tables
- Removed non-essential attributes
- Ordered by product key

**Purpose:** Enable product and category performance analysis.

---

### 4. Internet Sales Fact Table (FactInternetSales)

<img width="865" height="551" alt="image" src="https://github.com/user-attachments/assets/e13bc2b6-1642-4761-a6e5-48dcb474108d" />

- Selected only key sales metrics
- Removed redundant transactional fields
- Filtered sales data to **2024–2026**
- Ordered by order date for time analysis

**Purpose:** Provide a clean fact table for sales KPIs and trends.

---

## Tools Used
- **SQL Server (Docker)**
- **Azure Data Studio**
- **Terminal / CLI**

---

## Outcome
These queries produce a **clean star-schema-ready dataset** optimised for:
- Fast Power BI refreshes
- Clear relationships between tables
- Interactive slicing by customer, product, and time

