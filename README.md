# Databricks Analytics Engineering Project

Analytics engineering project demonstrating a modern data transformation pipeline using PySpark, Databricks, dbt and Power BI.

## Data Architecture

```mermaid
flowchart LR
    A["Source Data"] --> B["PySpark / Databricks"]
    B --> C["Bronze<br/>Raw Data"]
    C --> D["Silver<br/>Cleaned & Transformed"]
    D --> E["dbt"]
    E --> F["Gold<br/>Business-Ready Data"]
    F --> G["Power BI"]
```

## Tech Stack

- **Data Processing:** PySpark
- **Data Platform:** Databricks
- **Transformation & Testing:** dbt
- **Analytics:** Power BI
- **Version Control:** Git / GitHub

## Project Structure

```text
databricks-analytics-engineering/
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
├── tests/
├── macros/
├── seeds/
├── snapshots/
├── analyses/
│
├── dbt_project.yml
├── README.md
└── .gitignore
