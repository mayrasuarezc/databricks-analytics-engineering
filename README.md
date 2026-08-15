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
├── models/
│   ├── silver/
│   └── gold/
├── src/
├── tests/
├── README.md
└── dbt_project.yml
```

