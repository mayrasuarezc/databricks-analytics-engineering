# Analytics Engineering & Business Intelligence Platform

End-to-end analytics engineering project combining **Azure Databricks, PySpark, SQL, dbt, Power BI and Power Apps** to build a modern data-to-business-action workflow.

The project implements a **Bronze / Silver / Gold architecture**, transforms and models data for analytical consumption, exposes business insights through Power BI, and extends the BI layer with a Power Apps application for managing business actions directly from the analytical context.

---

## Project Overview

The objective of this project is to demonstrate an end-to-end **Analytics Engineering and Business Intelligence workflow**, from data ingestion and transformation to business reporting and action management.

The solution combines:

* **Azure Databricks** for data processing and analytics engineering
* **PySpark** for data ingestion and transformation
* **SQL** for analytical transformations
* **dbt** for modular data modeling and testing
* **Power BI** for business intelligence and visualization
* **Power Apps** for business action management based on Power BI insights

### Architecture

```text
                         Data Sources
                              │
                              ▼
                    ┌──────────────────┐
                    │  Azure Databricks │
                    │      PySpark      │
                    └────────┬─────────┘
                             │
                             ▼
                    ┌──────────────────┐
                    │      BRONZE      │
                    │ Raw / Ingested   │
                    │      Data        │
                    └────────┬─────────┘
                             │
                             ▼
                    ┌──────────────────┐
                    │      SILVER      │
                    │ Cleaning /       │
                    │ Transformation / │
                    │ Data Quality     │
                    └────────┬─────────┘
                             │
                             ▼
                         ┌───────┐
                         │  dbt  │
                         └───┬───┘
                             │
                             ▼
                    ┌──────────────────┐
                    │       GOLD       │
                    │ Analytical Models│
                    └────────┬─────────┘
                             │
                    ┌────────┴─────────┐
                    ▼                  ▼
              ┌───────────┐      ┌────────────┐
              │ Power BI  │      │ Power Apps │
              │ Analytics │      │  Business  │
              │ Dashboard │      │   Actions  │
              └───────────┘      └──────┬─────┘
                                        │
                                        ▼
                                Sales Action Tracking
```

---

## Medallion Architecture

### Bronze

The Bronze layer contains the initial ingested data.

The Databricks notebooks use **PySpark** to ingest and prepare the raw data for downstream processing.

Notebook:

```text

```
databricks/01_bronze_ingestion.ipynb
---

### Silver

The Silver layer applies data preparation and transformation logic, including:

* Data cleaning
* Standardization
* Transformation
* Data quality rules
* Business-oriented preparation

Notebook:

```text
databricks/02_silver_transformation.ipynb
```

---

### Gold

The Gold layer provides curated analytical data optimized for BI and business analysis.


Notebook:

```text
databricks/03_gold_analytics.ipynb
```

The resulting datasets are designed for consumption by the analytics and BI layers.

---

# dbt Analytics Engineering

The project uses **dbt** to create modular and maintainable analytical models.

Current dbt structure:

```text
models/
├── silver/
│   ├── fact_sales.sql
│   └── schema.yml
│
└── sources.yml
```

dbt is used to:

* Structure analytical transformations
* Separate transformation logic from ingestion
* Document data models
* Define model-level tests
* Create a maintainable analytics layer

Main configuration:

```text
dbt_project.yml
```

---

# Power BI

The Gold analytical layer is exposed to **Power BI** for business intelligence and reporting.

The dashboard is designed to analyze commercial performance through metrics such as:

* Sales performance
* Revenue
* Customers
* Products
* Product categories
* Trends and performance indicators

Power BI acts as the primary **analytical and visualization layer** of the solution.

<img width="968" height="586" alt="image" src="https://github.com/user-attachments/assets/7f4897fb-d04d-46a8-902c-7138966774cf" />


# Power Apps — Business Action Management

Power Apps extends the Power BI dashboard with a lightweight **business action management application**.

The purpose of the application is not to reproduce the data-quality functionality already handled in the Silver layer.

Instead, it provides a business workflow allowing users to **take action based on analytical insights**.

### Example workflow

```text
Power BI
   │
   │ User selects Customer / Product
   ▼
Power Apps
   │
   ├── Action Type
   ├── Priority
   ├── Owner
   ├── Due Date
   └── Notes
   │
   ▼
Sales Action
   │
   ▼
Action Tracking
```

Example actions include:

* Customer follow-up
* Upsell opportunity
* Renewal
* Customer contact
* Other commercial actions

The application is designed to demonstrate the integration between **BI insights and operational business actions**.

---

## Power Apps Data Model

The application uses a dedicated action-tracking structure rather than modifying the analytical Silver layer.
<img width="1115" height="587" alt="image" src="https://github.com/user-attachments/assets/9374fe57-9c48-4235-8980-51c4ee38f517" />

Example:

```text
SalesActions
├── ActionID
├── CustomerID
├── ProductID
├── ActionType
├── Priority
├── Owner
├── Notes
├── DueDate
├── Status
└── CreatedAt
```

Typical statuses:

```text
Open
In Progress
Completed
Cancelled
```

This creates a separation between:

```text
Analytical Data
       │
       ▼
    Power BI
       │
       ▼
Business Action
       │
       ▼
   Power Apps
```

---

# Project Structure

```text
databricks-analytics-engineering/
│
├── databricks/
│   ├── 01_bronze_ingestion.ipynb
│   ├── 02_silver_transformation.ipynb
│   └── 03_gold_analytics.ipynb
│
├── models/
│   └── silver/
│       ├── fact_sales.sql
│       └── schema.yml
│
├── analyses/
├── macros/
├── seeds/
├── snapshots/
├── tests/
│
├── dbt_project.yml
├── README.md
└── .gitignore
```

---

# Technology Stack

| Layer                 | Technology           |
| --------------------- | -------------------- |
| Cloud Data Platform   | **Azure Databricks** |
| Data Processing       | **PySpark**          |
| Data Transformation   | **PySpark / SQL**    |
| Analytics Engineering | **dbt**              |
| Data Modeling         | **SQL / dbt**        |
| Business Intelligence | **Power BI**         |
| Business Applications | **Power Apps**       |
| Version Control       | **Git / GitHub**     |

---

# Key Skills Demonstrated

* Analytics Engineering
* Medallion Architecture
* Azure Databricks
* PySpark
* SQL
* dbt
* Data Transformation
* Data Quality
* Analytical Data Modeling
* Power BI
* Power Apps
* Business Workflow Integration
* Git / GitHub

---

# Business Value

The project demonstrates an end-to-end approach where data is not only transformed and analyzed, but also used to support business decisions and actions.

```text
Data
 ↓
Engineering
 ↓
Analytics
 ↓
Visualization
 ↓
Business Decision
 ↓
Business Action
```

This architecture demonstrates how an Analytics Engineer can connect **data engineering, analytical modeling, BI and business applications** within a single solution.


