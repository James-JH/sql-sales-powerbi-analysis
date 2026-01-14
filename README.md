# Internet Sales Performance Dashboard  
**Data Analytics Portfolio Project**

## Overview
This project delivers an end-to-end **sales analytics solution**, transforming static sales reports into **interactive Power BI dashboards** to support decision-making for sales managers and sales representatives.

The dashboards focus on **internet sales performance by product and customer**, trend analysis over time, and **budget vs actual comparisons**, enabling clearer insights and more effective follow-ups.

---

## Business Request

Sales reporting previously relied on static reports, limiting visibility into trends, performance drivers, and budget tracking. The business required interactive dashboards to better understand performance and support proactive decision-making.

**Value of Change**
- Improved visibility of sales trends over time  
- Clear identification of top-performing products and customers  
- Faster, data-driven follow-ups by sales teams  
- Accurate budget vs actual performance tracking  

**Timeframe Analysed:** **2024–2026**  
**Budget Year:** **2026**

---

## User Stories

Based on the business request, the following user stories were formulated to ensure the acceptance criterias were addressed throughout the project:

| No | Role               | Request / Demand                           | User Value                                        | Acceptance Criteria                                      |
|----|------------------|--------------------------------------------|--------------------------------------------------|---------------------------------------------------------|
| 1  | Sales Manager     | Dashboard overview of internet sales       | Track sales over time and compare against budget | Power BI dashboard with graphs, KPIs, and budget comparisons |
| 2  | Sales Manager     | Get a dashboard overview of internet sales | See which customers and products are performing best | Power BI dashboard that updates data daily                |
| 3  | Sales Representative | Detailed overview of internet sales per customer | Monitor top customers and identify upselling opportunities | Power BI dashboard with filters per customer             |
| 4  | Sales Representative | Detailed overview of internet sales per product | Monitor which products sell best                 | Power BI dashboard with filters per product              |


---

## Dataset
- **Source:** Microsoft **AdventureWorks 2025**
- **Data Type:** Internet sales, customers, products, sales territories, budgets
- **Budget Data:** Provided via Excel (2026)

---

## Technical Stack & Workflow
- **SQL:** Data extraction and transformation  
- **Azure Data Studio:** Query development and database exploration  
- **Terminal & Docker:** Containerised SQL Server environment  
- **Power BI:** Data modelling, DAX measures, interactive dashboards  

**Workflow**
1. Set up a SQL Server instance using **Docker**
   
<img width="972" height="474" alt="Docker" src="https://github.com/user-attachments/assets/2197d91a-4795-4956-bcf6-cabda34c0cb6" />

2. Connected and queried the AdventureWorks database via **Azure Data Studio**
   
<img width="968" height="758" alt="AzureDataStudio" src="https://github.com/user-attachments/assets/9ec7b76e-9eaa-464e-afce-74e7433132de" />

3. Cleaned and transformed data using **SQL**
4. Loaded datasets into **Power BI**
5. Built a semantic model with relationships and calculated measures
   
<img width="873" height="420" alt="SemanticModel" src="https://github.com/user-attachments/assets/56c9dbda-32f9-40e5-b761-fbf12ed5287c" />

6. Designed dashboards aligned to business requirements

---

## Key Analysis & Features
- Internet sales trends across **2024–2026**
- Sales performance by **product** and **customer**
- **Budget vs actual** comparisons for 2026
- Interactive filtering by:
  - Customer
  - Product
  - Time period
- KPIs for quick performance assessment

---

## Dashboard
An interactive Power BI dashboard was developed to meet all business requirements.

<img width="1920" height="1095" alt="SalesAnalysisFinal" src="https://github.com/user-attachments/assets/3edd452e-6f58-42c2-bbdb-77b8750d3a1a" />


---

## Outcome
This project demonstrates the ability to:
- Extract and transform data using **SQL**
- Work with **containerised databases** in a local environment
- Translate business requirements into **actionable insights**
- Deliver end-to-end analytics from **database to BI**

---

## Skills Demonstrated
- SQL querying and data modelling  
- Power BI (DAX, KPIs, interactive visuals)  
- Business requirements analysis  
- Data storytelling for stakeholders  
- Tools: Docker, Terminal, Azure Data Studio  

Author: James Huynh 01/2026
